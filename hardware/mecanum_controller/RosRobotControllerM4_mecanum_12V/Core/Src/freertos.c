/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"
#include "tim.h"


/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "lvgl.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
typedef StaticTask_t osStaticThreadDef_t;
typedef StaticQueue_t osStaticMessageQDef_t;
typedef StaticTimer_t osStaticTimerDef_t;
typedef StaticEventGroup_t osStaticEventGroupDef_t;
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */

/* USER CODE END Variables */
/* Definitions for defaultTask */
osThreadId_t defaultTaskHandle;
uint32_t defaultTaskBuffer[ 128 ];
osStaticThreadDef_t defaultTaskControlBlock;
const osThreadAttr_t defaultTask_attributes = {
  .name = "defaultTask",
  .cb_mem = &defaultTaskControlBlock,
  .cb_size = sizeof(defaultTaskControlBlock),
  .stack_mem = &defaultTaskBuffer[0],
  .stack_size = sizeof(defaultTaskBuffer),
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for imu_task */
osThreadId_t imu_taskHandle;
uint32_t imu_taskBuffer[ 128 ];
osStaticThreadDef_t imu_taskControlBlock;
const osThreadAttr_t imu_task_attributes = {
  .name = "imu_task",
  .cb_mem = &imu_taskControlBlock,
  .cb_size = sizeof(imu_taskControlBlock),
  .stack_mem = &imu_taskBuffer[0],
  .stack_size = sizeof(imu_taskBuffer),
  .priority = (osPriority_t) osPriorityAboveNormal,
};
/* Definitions for packet_tx_task */
osThreadId_t packet_tx_taskHandle;
uint32_t packet_tx_taskBuffer[ 128 ];
osStaticThreadDef_t packet_tx_taskControlBlock;
const osThreadAttr_t packet_tx_task_attributes = {
  .name = "packet_tx_task",
  .cb_mem = &packet_tx_taskControlBlock,
  .cb_size = sizeof(packet_tx_taskControlBlock),
  .stack_mem = &packet_tx_taskBuffer[0],
  .stack_size = sizeof(packet_tx_taskBuffer),
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for packet_rx_task */
osThreadId_t packet_rx_taskHandle;
uint32_t packet_rx_taskBuffer[ 256 ];
osStaticThreadDef_t packet_rx_taskControlBlock;
const osThreadAttr_t packet_rx_task_attributes = {
  .name = "packet_rx_task",
  .cb_mem = &packet_rx_taskControlBlock,
  .cb_size = sizeof(packet_rx_taskControlBlock),
  .stack_mem = &packet_rx_taskBuffer[0],
  .stack_size = sizeof(packet_rx_taskBuffer),
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for sbus_rx_task */
osThreadId_t sbus_rx_taskHandle;
uint32_t sbus_rx_taskBuffer[ 128 ];
osStaticThreadDef_t sbus_rx_taskControlBlock;
const osThreadAttr_t sbus_rx_task_attributes = {
  .name = "sbus_rx_task",
  .cb_mem = &sbus_rx_taskControlBlock,
  .cb_size = sizeof(sbus_rx_taskControlBlock),
  .stack_mem = &sbus_rx_taskBuffer[0],
  .stack_size = sizeof(sbus_rx_taskBuffer),
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for gui_task */
osThreadId_t gui_taskHandle;
uint32_t gui_taskBuffer[ 512 ];
osStaticThreadDef_t gui_taskControlBlock;
const osThreadAttr_t gui_task_attributes = {
  .name = "gui_task",
  .cb_mem = &gui_taskControlBlock,
  .cb_size = sizeof(gui_taskControlBlock),
  .stack_mem = &gui_taskBuffer[0],
  .stack_size = sizeof(gui_taskBuffer),
  .priority = (osPriority_t) osPriorityBelowNormal,
};
/* Definitions for app_task */
osThreadId_t app_taskHandle;
uint32_t app_taskBuffer[ 512 ];
osStaticThreadDef_t app_taskControlBlock;
const osThreadAttr_t app_task_attributes = {
  .name = "app_task",
  .cb_mem = &app_taskControlBlock,
  .cb_size = sizeof(app_taskControlBlock),
  .stack_mem = &app_taskBuffer[0],
  .stack_size = sizeof(app_taskBuffer),
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for bluetooth_task */
osThreadId_t bluetooth_taskHandle;
uint32_t bluetooth_taskBuffer[ 128 ];
osStaticThreadDef_t bluetooth_taskControlBlock;
const osThreadAttr_t bluetooth_task_attributes = {
  .name = "bluetooth_task",
  .cb_mem = &bluetooth_taskControlBlock,
  .cb_size = sizeof(bluetooth_taskControlBlock),
  .stack_mem = &bluetooth_taskBuffer[0],
  .stack_size = sizeof(bluetooth_taskBuffer),
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for packet_tx_queue */
osMessageQueueId_t packet_tx_queueHandle;
uint8_t packet_tx_queueBuffer[ 64 * sizeof( void* ) ];
osStaticMessageQDef_t packet_tx_queueControlBlock;
const osMessageQueueAttr_t packet_tx_queue_attributes = {
  .name = "packet_tx_queue",
  .cb_mem = &packet_tx_queueControlBlock,
  .cb_size = sizeof(packet_tx_queueControlBlock),
  .mq_mem = &packet_tx_queueBuffer,
  .mq_size = sizeof(packet_tx_queueBuffer)
};
/* Definitions for lvgl_event_queue */
osMessageQueueId_t lvgl_event_queueHandle;
uint8_t lvgl_event_queueBuffer[ 16 * sizeof( void* ) ];
osStaticMessageQDef_t lvgl_event_queueControlBlock;
const osMessageQueueAttr_t lvgl_event_queue_attributes = {
  .name = "lvgl_event_queue",
  .cb_mem = &lvgl_event_queueControlBlock,
  .cb_size = sizeof(lvgl_event_queueControlBlock),
  .mq_mem = &lvgl_event_queueBuffer,
  .mq_size = sizeof(lvgl_event_queueBuffer)
};
/* Definitions for moving_ctrl_queue */
osMessageQueueId_t moving_ctrl_queueHandle;
uint8_t moving_ctrl_queueBuffer[ 32 * sizeof( char ) ];
osStaticMessageQDef_t moving_ctrl_queueControlBlock;
const osMessageQueueAttr_t moving_ctrl_queue_attributes = {
  .name = "moving_ctrl_queue",
  .cb_mem = &moving_ctrl_queueControlBlock,
  .cb_size = sizeof(moving_ctrl_queueControlBlock),
  .mq_mem = &moving_ctrl_queueBuffer,
  .mq_size = sizeof(moving_ctrl_queueBuffer)
};
/* Definitions for bluetooth_tx_queue */
osMessageQueueId_t bluetooth_tx_queueHandle;
uint8_t bluetooth_tx_queueBuffer[ 8 * 8 ];
osStaticMessageQDef_t bluetooth_tx_queueControlBlock;
const osMessageQueueAttr_t bluetooth_tx_queue_attributes = {
  .name = "bluetooth_tx_queue",
  .cb_mem = &bluetooth_tx_queueControlBlock,
  .cb_size = sizeof(bluetooth_tx_queueControlBlock),
  .mq_mem = &bluetooth_tx_queueBuffer,
  .mq_size = sizeof(bluetooth_tx_queueBuffer)
};
/* Definitions for button_timer */
osTimerId_t button_timerHandle;
osStaticTimerDef_t button_timerControlBlock;
const osTimerAttr_t button_timer_attributes = {
  .name = "button_timer",
  .cb_mem = &button_timerControlBlock,
  .cb_size = sizeof(button_timerControlBlock),
};
/* Definitions for led_timer */
osTimerId_t led_timerHandle;
osStaticTimerDef_t led_timerControlBlock;
const osTimerAttr_t led_timer_attributes = {
  .name = "led_timer",
  .cb_mem = &led_timerControlBlock,
  .cb_size = sizeof(led_timerControlBlock),
};
/* Definitions for lvgl_timer */
osTimerId_t lvgl_timerHandle;
osStaticTimerDef_t lvgl_timerControlBlock;
const osTimerAttr_t lvgl_timer_attributes = {
  .name = "lvgl_timer",
  .cb_mem = &lvgl_timerControlBlock,
  .cb_size = sizeof(lvgl_timerControlBlock),
};
/* Definitions for buzzer_timer */
osTimerId_t buzzer_timerHandle;
osStaticTimerDef_t buzzer_timerControlBlock;
const osTimerAttr_t buzzer_timer_attributes = {
  .name = "buzzer_timer",
  .cb_mem = &buzzer_timerControlBlock,
  .cb_size = sizeof(buzzer_timerControlBlock),
};
/* Definitions for battery_check_timer */
osTimerId_t battery_check_timerHandle;
osStaticTimerDef_t battery_check_timerControlBlock;
const osTimerAttr_t battery_check_timer_attributes = {
  .name = "battery_check_timer",
  .cb_mem = &battery_check_timerControlBlock,
  .cb_size = sizeof(battery_check_timerControlBlock),
};
/* Definitions for IMU_read_timer */
osTimerId_t IMU_read_timerHandle;
osStaticTimerDef_t IMU_read_timerControlBlock;
const osTimerAttr_t IMU_read_timer_attributes = {
  .name = "IMU_read_timer",
  .cb_mem = &IMU_read_timerControlBlock,
  .cb_size = sizeof(IMU_read_timerControlBlock),
};
/* Definitions for packet_tx_idle */
osSemaphoreId_t packet_tx_idleHandle;
const osSemaphoreAttr_t packet_tx_idle_attributes = {
  .name = "packet_tx_idle"
};
/* Definitions for packet_rx_not_empty */
osSemaphoreId_t packet_rx_not_emptyHandle;
const osSemaphoreAttr_t packet_rx_not_empty_attributes = {
  .name = "packet_rx_not_empty"
};
/* Definitions for IMU_data_ready */
osSemaphoreId_t IMU_data_readyHandle;
const osSemaphoreAttr_t IMU_data_ready_attributes = {
  .name = "IMU_data_ready"
};
/* Definitions for sbus_data_ready_01_ */
osSemaphoreId_t sbus_data_ready_01_Handle;
const osSemaphoreAttr_t sbus_data_ready_01__attributes = {
  .name = "sbus_data_ready_01_"
};
/* Definitions for spi_tx_finished */
osSemaphoreId_t spi_tx_finishedHandle;
const osSemaphoreAttr_t spi_tx_finished_attributes = {
  .name = "spi_tx_finished"
};
/* Definitions for bluetooth_tx_idle */
osSemaphoreId_t bluetooth_tx_idleHandle;
const osSemaphoreAttr_t bluetooth_tx_idle_attributes = {
  .name = "bluetooth_tx_idle"
};
/* Definitions for serial_servo_rx_complete */
osSemaphoreId_t serial_servo_rx_completeHandle;
const osSemaphoreAttr_t serial_servo_rx_complete_attributes = {
  .name = "serial_servo_rx_complete"
};
/* Definitions for sbus_data_ready_event_ */
osEventFlagsId_t sbus_data_ready_event_Handle;
osStaticEventGroupDef_t sbus_data_ready_event_ControlBlock;
const osEventFlagsAttr_t sbus_data_ready_event__attributes = {
  .name = "sbus_data_ready_event_",
  .cb_mem = &sbus_data_ready_event_ControlBlock,
  .cb_size = sizeof(sbus_data_ready_event_ControlBlock),
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void *argument);
void imu_task_entry(void *argument);
void packet_tx_task_entry(void *argument);
void packet_rx_task_entry(void *argument);
void sbus_rx_task_entry(void *argument);
void gui_task_entry(void *argument);
void app_task_entry(void *argument);
void bluetooth_task_entry(void *argument);
void button_timer_callback(void *argument);
void led_timer_callback(void *argument);
void lvgl_timer_callback(void *argument);
void buzzer_timer_callback(void *argument);
void battery_check_timer_callback(void *argument);
void IMU_read_timer_callback(void *argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/* Hook prototypes */
void vApplicationIdleHook(void);
void vApplicationTickHook(void);

/* USER CODE BEGIN 2 */
void vApplicationIdleHook( void )
{
    /* vApplicationIdleHook() will only be called if configUSE_IDLE_HOOK is set
    to 1 in FreeRTOSConfig.h. It will be called on each iteration of the idle
    task. It is essential that code added to this hook function never attempts
    to block in any way (for example, call xQueueReceive() with a block time
    specified, or call vTaskDelay()). If the application makes use of the
    vTaskDelete() API function (as this demo application does) then it is also
    important that vApplicationIdleHook() is permitted to return to its calling
    function, because it is the responsibility of the idle task to clean up
    memory allocated by the kernel to any task that has since been deleted. */
}
/* USER CODE END 2 */

/* USER CODE BEGIN 3 */
void vApplicationTickHook( void )
{
    /* This function will be called by each tick interrupt if
    configUSE_TICK_HOOK is set to 1 in FreeRTOSConfig.h. User code can be
    added here, but the tick hook is called from an interrupt context, so
    code must not attempt to block, and only the interrupt safe FreeRTOS API
    functions can be used (those that end in FromISR()). */
    lv_tick_inc(1);
}
/* USER CODE END 3 */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
    /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* Create the semaphores(s) */
  /* creation of packet_tx_idle */
  packet_tx_idleHandle = osSemaphoreNew(1, 0, &packet_tx_idle_attributes);

  /* creation of packet_rx_not_empty */
  packet_rx_not_emptyHandle = osSemaphoreNew(1, 0, &packet_rx_not_empty_attributes);

  /* creation of IMU_data_ready */
  IMU_data_readyHandle = osSemaphoreNew(1, 0, &IMU_data_ready_attributes);

  /* creation of sbus_data_ready_01_ */
  sbus_data_ready_01_Handle = osSemaphoreNew(1, 0, &sbus_data_ready_01__attributes);

  /* creation of spi_tx_finished */
  spi_tx_finishedHandle = osSemaphoreNew(1, 0, &spi_tx_finished_attributes);

  /* creation of bluetooth_tx_idle */
  bluetooth_tx_idleHandle = osSemaphoreNew(1, 0, &bluetooth_tx_idle_attributes);

  /* creation of serial_servo_rx_complete */
  serial_servo_rx_completeHandle = osSemaphoreNew(1, 1, &serial_servo_rx_complete_attributes);

  /* USER CODE BEGIN RTOS_SEMAPHORES */
    /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* Create the timer(s) */
  /* creation of button_timer */
  button_timerHandle = osTimerNew(button_timer_callback, osTimerPeriodic, NULL, &button_timer_attributes);

  /* creation of led_timer */
  led_timerHandle = osTimerNew(led_timer_callback, osTimerPeriodic, NULL, &led_timer_attributes);

  /* creation of lvgl_timer */
  lvgl_timerHandle = osTimerNew(lvgl_timer_callback, osTimerPeriodic, NULL, &lvgl_timer_attributes);

  /* creation of buzzer_timer */
  buzzer_timerHandle = osTimerNew(buzzer_timer_callback, osTimerPeriodic, NULL, &buzzer_timer_attributes);

  /* creation of battery_check_timer */
  battery_check_timerHandle = osTimerNew(battery_check_timer_callback, osTimerPeriodic, NULL, &battery_check_timer_attributes);

  /* creation of IMU_read_timer */
  IMU_read_timerHandle = osTimerNew(IMU_read_timer_callback, osTimerPeriodic, NULL, &IMU_read_timer_attributes);

  /* USER CODE BEGIN RTOS_TIMERS */
    /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* Create the queue(s) */
  /* creation of packet_tx_queue */
  packet_tx_queueHandle = osMessageQueueNew (64, sizeof(void*), &packet_tx_queue_attributes);

  /* creation of lvgl_event_queue */
  lvgl_event_queueHandle = osMessageQueueNew (16, sizeof(void*), &lvgl_event_queue_attributes);

  /* creation of moving_ctrl_queue */
  moving_ctrl_queueHandle = osMessageQueueNew (32, sizeof(char), &moving_ctrl_queue_attributes);

  /* creation of bluetooth_tx_queue */
  bluetooth_tx_queueHandle = osMessageQueueNew (8, 8, &bluetooth_tx_queue_attributes);

  /* USER CODE BEGIN RTOS_QUEUES */
    /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of defaultTask */
  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);

  /* creation of imu_task */
  imu_taskHandle = osThreadNew(imu_task_entry, NULL, &imu_task_attributes);

  /* creation of packet_tx_task */
  packet_tx_taskHandle = osThreadNew(packet_tx_task_entry, NULL, &packet_tx_task_attributes);

  /* creation of packet_rx_task */
  packet_rx_taskHandle = osThreadNew(packet_rx_task_entry, NULL, &packet_rx_task_attributes);

  /* creation of sbus_rx_task */
  sbus_rx_taskHandle = osThreadNew(sbus_rx_task_entry, NULL, &sbus_rx_task_attributes);

  /* creation of gui_task */
  gui_taskHandle = osThreadNew(gui_task_entry, NULL, &gui_task_attributes);

  /* creation of app_task */
  app_taskHandle = osThreadNew(app_task_entry, NULL, &app_task_attributes);

  /* creation of bluetooth_task */
  bluetooth_taskHandle = osThreadNew(bluetooth_task_entry, NULL, &bluetooth_task_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
    /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* Create the event(s) */
  /* creation of sbus_data_ready_event_ */
  sbus_data_ready_event_Handle = osEventFlagsNew(&sbus_data_ready_event__attributes);

  /* USER CODE BEGIN RTOS_EVENTS */
    /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* USER CODE BEGIN Header_StartDefaultTask */
/**
  * @brief  Function implementing the defaultTask thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void *argument)
{
  /* USER CODE BEGIN StartDefaultTask */
    /* Infinite loop */
    for(;;) {
        osDelay(1);
    }
  /* USER CODE END StartDefaultTask */
}

/* USER CODE BEGIN Header_imu_task_entry */
/**
* @brief Function implementing the imu_task thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_imu_task_entry */
__weak void imu_task_entry(void *argument)
{
  /* USER CODE BEGIN imu_task_entry */
    /* Infinite loop */
    for(;;) {
        osDelay(1);
    }
  /* USER CODE END imu_task_entry */
}

/* USER CODE BEGIN Header_packet_tx_task_entry */
/**
* @brief Function implementing the packet_tx_task thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_packet_tx_task_entry */
__weak void packet_tx_task_entry(void *argument)
{
  /* USER CODE BEGIN packet_tx_task_entry */
    /* Infinite loop */
    for(;;) {
        osDelay(1);
    }
  /* USER CODE END packet_tx_task_entry */
}

/* USER CODE BEGIN Header_packet_rx_task_entry */
/**
* @brief Function implementing the packet_rx_task thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_packet_rx_task_entry */
__weak void packet_rx_task_entry(void *argument)
{
  /* USER CODE BEGIN packet_rx_task_entry */
    /* Infinite loop */
    for(;;) {
        osDelay(1);
    }
  /* USER CODE END packet_rx_task_entry */
}

/* USER CODE BEGIN Header_sbus_rx_task_entry */
/**
* @brief Function implementing the sbus_rx_task thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_sbus_rx_task_entry */
__weak void sbus_rx_task_entry(void *argument)
{
  /* USER CODE BEGIN sbus_rx_task_entry */
    /* Infinite loop */
    for(;;) {
        osDelay(1);
    }
  /* USER CODE END sbus_rx_task_entry */
}

/* USER CODE BEGIN Header_gui_task_entry */
/**
* @brief Function implementing the gui_task thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_gui_task_entry */
__weak void gui_task_entry(void *argument)
{
  /* USER CODE BEGIN gui_task_entry */
  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END gui_task_entry */
}

/* USER CODE BEGIN Header_app_task_entry */
/**
* @brief Function implementing the app_task thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_app_task_entry */
__weak void app_task_entry(void *argument)
{
  /* USER CODE BEGIN app_task_entry */
	  // 1) 啟動所有 PWM 輸出
	  HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1); // PE9
	  HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_2); // PE11
	  HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_3); // PE13
	  HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_4); // PE14
	  HAL_TIM_PWM_Start(&htim9, TIM_CHANNEL_1); // PE5
	  HAL_TIM_PWM_Start(&htim9, TIM_CHANNEL_2); // PE6
	  HAL_TIM_PWM_Start(&htim10, TIM_CHANNEL_1); // PB8
	  HAL_TIM_PWM_Start(&htim11, TIM_CHANNEL_1); // PB9

	  // 2) 啟動所有 Encoder（之後你可讀 CNT 值）
	  HAL_TIM_Encoder_Start(&htim2, TIM_CHANNEL_ALL);
	  HAL_TIM_Encoder_Start(&htim3, TIM_CHANNEL_ALL);
	  HAL_TIM_Encoder_Start(&htim4, TIM_CHANNEL_ALL);
	  HAL_TIM_Encoder_Start(&htim5, TIM_CHANNEL_ALL);

	  // 3) 檢查板上實體電機開關（若為低，提醒一下）
	  if (HAL_GPIO_ReadPin(MOTOR_ENABLE_GPIO_Port, MOTOR_ENABLE_Pin) == GPIO_PIN_RESET) {
		// 這通常表示「電機控制開關」未打開；你可以在這裡閃 LED 或蜂鳴提醒
		// HAL_GPIO_TogglePin(LED_SYS_GPIO_Port, LED_SYS_Pin);
	  }

	  // 4) 設定 50% duty（ARR=999）
	  const uint32_t duty = 500;

	  // *** 假設配對（每輪兩路）：把一邊=50%、另一邊=0% 代表「前進」 ***
	  // Motor LF:  TIM1_CH1(+), TIM1_CH2(-)


	  // 讓它轉 1 秒
	  osDelay(1000);

	  // 停止：全部 duty = 0
	  __HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_1, 0);
	  __HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_2, 0);
	  __HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_3, 0);
	  __HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_4, 0);
	  __HAL_TIM_SET_COMPARE(&htim9, TIM_CHANNEL_1, 0);
	  __HAL_TIM_SET_COMPARE(&htim9, TIM_CHANNEL_2, 0);
	  __HAL_TIM_SET_COMPARE(&htim10, TIM_CHANNEL_1, 0);
	  __HAL_TIM_SET_COMPARE(&htim11, TIM_CHANNEL_1, 0);
  /* Infinite loop */
//  for(;;)
//  {
//    osDelay(1);
//  }
  /* USER CODE END app_task_entry */
}

/* USER CODE BEGIN Header_bluetooth_task_entry */
/**
* @brief Function implementing the bluetooth_task thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_bluetooth_task_entry */
__weak void bluetooth_task_entry(void *argument)
{
  /* USER CODE BEGIN bluetooth_task_entry */
  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END bluetooth_task_entry */
}

/* button_timer_callback function */
__weak void button_timer_callback(void *argument)
{
  /* USER CODE BEGIN button_timer_callback */

  /* USER CODE END button_timer_callback */
}

/* led_timer_callback function */
__weak void led_timer_callback(void *argument)
{
  /* USER CODE BEGIN led_timer_callback */

  /* USER CODE END led_timer_callback */
}

/* lvgl_timer_callback function */
__weak void lvgl_timer_callback(void *argument)
{
  /* USER CODE BEGIN lvgl_timer_callback */

  /* USER CODE END lvgl_timer_callback */
}

/* buzzer_timer_callback function */
__weak void buzzer_timer_callback(void *argument)
{
  /* USER CODE BEGIN buzzer_timer_callback */

  /* USER CODE END buzzer_timer_callback */
}

/* battery_check_timer_callback function */
__weak void battery_check_timer_callback(void *argument)
{
  /* USER CODE BEGIN battery_check_timer_callback */

  /* USER CODE END battery_check_timer_callback */
}

/* IMU_read_timer_callback function */
__weak void IMU_read_timer_callback(void *argument)
{
  /* USER CODE BEGIN IMU_read_timer_callback */

  /* USER CODE END IMU_read_timer_callback */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */

