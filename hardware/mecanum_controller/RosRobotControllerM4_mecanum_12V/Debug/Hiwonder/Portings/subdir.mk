################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hiwonder/Portings/FlashSave_porting.c \
../Hiwonder/Portings/bluetooth_porting.c \
../Hiwonder/Portings/button_porting.c \
../Hiwonder/Portings/buzzer_porting.c \
../Hiwonder/Portings/chassis_porting.c \
../Hiwonder/Portings/imu_porting.c \
../Hiwonder/Portings/lcd_porting.c \
../Hiwonder/Portings/led_porting.c \
../Hiwonder/Portings/lwmem_porting.c \
../Hiwonder/Portings/motor_porting.c \
../Hiwonder/Portings/packet_porting.c \
../Hiwonder/Portings/pwm_servo_porting.c \
../Hiwonder/Portings/serial_servo_porting.c 

OBJS += \
./Hiwonder/Portings/FlashSave_porting.o \
./Hiwonder/Portings/bluetooth_porting.o \
./Hiwonder/Portings/button_porting.o \
./Hiwonder/Portings/buzzer_porting.o \
./Hiwonder/Portings/chassis_porting.o \
./Hiwonder/Portings/imu_porting.o \
./Hiwonder/Portings/lcd_porting.o \
./Hiwonder/Portings/led_porting.o \
./Hiwonder/Portings/lwmem_porting.o \
./Hiwonder/Portings/motor_porting.o \
./Hiwonder/Portings/packet_porting.o \
./Hiwonder/Portings/pwm_servo_porting.o \
./Hiwonder/Portings/serial_servo_porting.o 

C_DEPS += \
./Hiwonder/Portings/FlashSave_porting.d \
./Hiwonder/Portings/bluetooth_porting.d \
./Hiwonder/Portings/button_porting.d \
./Hiwonder/Portings/buzzer_porting.d \
./Hiwonder/Portings/chassis_porting.d \
./Hiwonder/Portings/imu_porting.d \
./Hiwonder/Portings/lcd_porting.d \
./Hiwonder/Portings/led_porting.d \
./Hiwonder/Portings/lwmem_porting.d \
./Hiwonder/Portings/motor_porting.d \
./Hiwonder/Portings/packet_porting.d \
./Hiwonder/Portings/pwm_servo_porting.d \
./Hiwonder/Portings/serial_servo_porting.d 


# Each subdirectory must supply rules for building sources it contributes
Hiwonder/Portings/%.o Hiwonder/Portings/%.su Hiwonder/Portings/%.cyclo: ../Hiwonder/Portings/%.c Hiwonder/Portings/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/RTT" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/System" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Peripherals" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/MDK-ARM" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Portings" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Lw" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Misc" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Chassis" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_customer_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Hiwonder-2f-Portings

clean-Hiwonder-2f-Portings:
	-$(RM) ./Hiwonder/Portings/FlashSave_porting.cyclo ./Hiwonder/Portings/FlashSave_porting.d ./Hiwonder/Portings/FlashSave_porting.o ./Hiwonder/Portings/FlashSave_porting.su ./Hiwonder/Portings/bluetooth_porting.cyclo ./Hiwonder/Portings/bluetooth_porting.d ./Hiwonder/Portings/bluetooth_porting.o ./Hiwonder/Portings/bluetooth_porting.su ./Hiwonder/Portings/button_porting.cyclo ./Hiwonder/Portings/button_porting.d ./Hiwonder/Portings/button_porting.o ./Hiwonder/Portings/button_porting.su ./Hiwonder/Portings/buzzer_porting.cyclo ./Hiwonder/Portings/buzzer_porting.d ./Hiwonder/Portings/buzzer_porting.o ./Hiwonder/Portings/buzzer_porting.su ./Hiwonder/Portings/chassis_porting.cyclo ./Hiwonder/Portings/chassis_porting.d ./Hiwonder/Portings/chassis_porting.o ./Hiwonder/Portings/chassis_porting.su ./Hiwonder/Portings/imu_porting.cyclo ./Hiwonder/Portings/imu_porting.d ./Hiwonder/Portings/imu_porting.o ./Hiwonder/Portings/imu_porting.su ./Hiwonder/Portings/lcd_porting.cyclo ./Hiwonder/Portings/lcd_porting.d ./Hiwonder/Portings/lcd_porting.o ./Hiwonder/Portings/lcd_porting.su ./Hiwonder/Portings/led_porting.cyclo ./Hiwonder/Portings/led_porting.d ./Hiwonder/Portings/led_porting.o ./Hiwonder/Portings/led_porting.su ./Hiwonder/Portings/lwmem_porting.cyclo ./Hiwonder/Portings/lwmem_porting.d ./Hiwonder/Portings/lwmem_porting.o ./Hiwonder/Portings/lwmem_porting.su ./Hiwonder/Portings/motor_porting.cyclo ./Hiwonder/Portings/motor_porting.d ./Hiwonder/Portings/motor_porting.o ./Hiwonder/Portings/motor_porting.su ./Hiwonder/Portings/packet_porting.cyclo ./Hiwonder/Portings/packet_porting.d ./Hiwonder/Portings/packet_porting.o ./Hiwonder/Portings/packet_porting.su ./Hiwonder/Portings/pwm_servo_porting.cyclo ./Hiwonder/Portings/pwm_servo_porting.d ./Hiwonder/Portings/pwm_servo_porting.o ./Hiwonder/Portings/pwm_servo_porting.su ./Hiwonder/Portings/serial_servo_porting.cyclo ./Hiwonder/Portings/serial_servo_porting.d ./Hiwonder/Portings/serial_servo_porting.o ./Hiwonder/Portings/serial_servo_porting.su

.PHONY: clean-Hiwonder-2f-Portings

