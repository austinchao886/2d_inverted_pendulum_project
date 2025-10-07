/**
 * @file app.c
 * @author Wu TongXing
 * @brief 主应用逻辑
 * @version 0.1
 * @date 2023-11-05
 *
 * @copyright Copyright (c) 2023
 *
 */

#include "cmsis_os2.h"
#include "led.h"
#include "lwmem_porting.h"
#include "global.h"
#include "adc.h"
#include "pwm_servo.h"
#include "serial_servo.h"
#include "FlashSave_porting.h"

#define PWM_SERVO_DEV_MAX  2200
#define PWM_SERVO_DEV_MIN  800

/* 蜂鸣器	的频率 */
#define BUZZER_FREQ				 1300

//底盘类型
uint32_t Chassis_run_type = CHASSIS_TYPE_JETAUTO;
uint8_t  save_flash = 0;
uint32_t buzzer_count = 0;

/* 硬件初始化声明 */
void buzzers_init(void);    //蜂鸣器
void buttons_init(void);	//按键
void motors_init(void);     //电机
void pwm_servos_init(void); //舵机
void chassis_init(void);    //小车参数初始化
void mecanum_control(void);




void send_type(ChassisTypeEnum chassis_type);


//小阿克曼车控制函数
void minacker_control(void);


/* 用户入口函数 */
void app_task_entry(void *argument)
{
    /* 声明外部句柄 */
    //蜂鸣器句柄
    extern osTimerId_t buzzer_timerHandle;  
	//电量监控句柄
    extern osTimerId_t battery_check_timerHandle;
	//按键控制句柄
    extern osTimerId_t button_timerHandle;


	
    /* 硬件初始化 */
    motors_init();      //电机初始化
	pwm_servos_init();  //云台舵机初始化
    buzzers_init();     //蜂鸣器初始化
    buttons_init();		//按键初始化
	
	
	

    //开启蜂鸣器定时器，让其在中断中运作，后面调用接口函数即可
    //参数1：定时器句柄 ， 参数2：定时器的工作间隔 ms
    osTimerStart(buzzer_timerHandle, BUZZER_TASK_PERIOD);   
	//开启电量监控定时器，实时监控电量
    osTimerStart(battery_check_timerHandle, BATTERY_TASK_PERIOD);
	//开启ADC通道转换
	HAL_ADC_Start(&hadc1);
	
	

    //初始化底盘电机运动参数
    chassis_init();     
    //选择底盘类型
    set_chassis_type(Chassis_run_type);
	
	chassis->stop(chassis); //停止
	
	

	mecanum_control();


	// 循环  : RTOS任务中的循环，必须要有osDelay或者其他系统阻塞函数，否则会导致系统异常
    for(;;) {
		
		osDelay(5000);
    
	}
}

/* 
*  麦克纳姆轮底盘控制函数
*/
void mecanum_control(void)
{
    //定义电机运动速度
    //建议范围为 [50 , 450]
    static float speed = 300.0f;  


	//以x轴线速度运动（即向前运动）
	chassis->set_velocity(chassis, 200.0, 0, 0);
	osDelay(2000); //延时2s

	chassis->stop(chassis); //停止
	osDelay(1000); //延时1s
	
	//以x轴线速度运动（即向后运动）
	chassis->set_velocity(chassis, -200.0, 0, 0);
	osDelay(2000); //延时2s	

	chassis->stop(chassis); //停止
	osDelay(1000); //延时1s
	

	//以y轴线速度运动（即向左运动）
	chassis->set_velocity(chassis, 0, 200.0, 0);
	osDelay(2000); //延时2s

	chassis->stop(chassis); //停止
	osDelay(1000); //延时1s

	chassis->set_velocity(chassis, 0, -200.0, 0);
	osDelay(2000); //延时2s	

	chassis->stop(chassis); //停止
	osDelay(1000); //延时1s


	//角速度运动 即原地向左运动
	chassis->set_velocity(chassis, 0, 0, -0.5);
	osDelay(2000); //延时2s

	chassis->stop(chassis); //停止
	osDelay(1000); //延时1s
	
	//角速度运动 即原地向右运动
	chassis->set_velocity(chassis, 0, 0, 0.5);
	osDelay(2000); //延时2s	

	chassis->stop(chassis); //停止
	osDelay(1000); //延时1s


	//斜向运动 斜向左前运动
	chassis->set_velocity(chassis, 100.0, 100.0, 0);
	osDelay(2000); //延时2s

	chassis->stop(chassis); //停止
	osDelay(1000); //延时1s

	//斜向运动 斜向右后运动
	chassis->set_velocity(chassis, -100.0, -100.0, 0);
	osDelay(2000); //延时2s	

	chassis->stop(chassis); //停止
	osDelay(1000); //延时1s


	//漂移运动 向左边漂移
	chassis->drift(chassis, false);
	osDelay(2000); //延时2s	

	chassis->stop(chassis); //停止
	osDelay(1000); //延时1s

	//漂移运动 向右边漂移
	chassis->drift(chassis, true);
	osDelay(2000); //延时2s

	chassis->stop(chassis); //停止
	osDelay(1000); //延时1s
	

	/*//向左前方线性运动
	chassis->set_velocity(chassis, 200.0, 0, -0.3);
	osDelay(2000); //延时2s

	chassis->stop(chassis); //停止
	osDelay(1000); //延时1s

	//向右后方线性运动
	chassis->set_velocity(chassis, -200.0, 0, 0.3);
	osDelay(2000); //延时2s	

	chassis->stop(chassis); //停止
	osDelay(1000); //延时1s*/


}




