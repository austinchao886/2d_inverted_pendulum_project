################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hiwonder/Peripherals/QMI8658.c \
../Hiwonder/Peripherals/button.c \
../Hiwonder/Peripherals/buzzer.c \
../Hiwonder/Peripherals/display_st7735.c \
../Hiwonder/Peripherals/encoder_motor.c \
../Hiwonder/Peripherals/imu.c \
../Hiwonder/Peripherals/imu_mpu6050.c \
../Hiwonder/Peripherals/led.c \
../Hiwonder/Peripherals/pwm_servo.c \
../Hiwonder/Peripherals/serial_servo.c 

OBJS += \
./Hiwonder/Peripherals/QMI8658.o \
./Hiwonder/Peripherals/button.o \
./Hiwonder/Peripherals/buzzer.o \
./Hiwonder/Peripherals/display_st7735.o \
./Hiwonder/Peripherals/encoder_motor.o \
./Hiwonder/Peripherals/imu.o \
./Hiwonder/Peripherals/imu_mpu6050.o \
./Hiwonder/Peripherals/led.o \
./Hiwonder/Peripherals/pwm_servo.o \
./Hiwonder/Peripherals/serial_servo.o 

C_DEPS += \
./Hiwonder/Peripherals/QMI8658.d \
./Hiwonder/Peripherals/button.d \
./Hiwonder/Peripherals/buzzer.d \
./Hiwonder/Peripherals/display_st7735.d \
./Hiwonder/Peripherals/encoder_motor.d \
./Hiwonder/Peripherals/imu.d \
./Hiwonder/Peripherals/imu_mpu6050.d \
./Hiwonder/Peripherals/led.d \
./Hiwonder/Peripherals/pwm_servo.d \
./Hiwonder/Peripherals/serial_servo.d 


# Each subdirectory must supply rules for building sources it contributes
Hiwonder/Peripherals/%.o Hiwonder/Peripherals/%.su Hiwonder/Peripherals/%.cyclo: ../Hiwonder/Peripherals/%.c Hiwonder/Peripherals/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/RTT" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/System" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Peripherals" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/MDK-ARM" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Portings" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Lw" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Misc" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Chassis" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_customer_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Hiwonder-2f-Peripherals

clean-Hiwonder-2f-Peripherals:
	-$(RM) ./Hiwonder/Peripherals/QMI8658.cyclo ./Hiwonder/Peripherals/QMI8658.d ./Hiwonder/Peripherals/QMI8658.o ./Hiwonder/Peripherals/QMI8658.su ./Hiwonder/Peripherals/button.cyclo ./Hiwonder/Peripherals/button.d ./Hiwonder/Peripherals/button.o ./Hiwonder/Peripherals/button.su ./Hiwonder/Peripherals/buzzer.cyclo ./Hiwonder/Peripherals/buzzer.d ./Hiwonder/Peripherals/buzzer.o ./Hiwonder/Peripherals/buzzer.su ./Hiwonder/Peripherals/display_st7735.cyclo ./Hiwonder/Peripherals/display_st7735.d ./Hiwonder/Peripherals/display_st7735.o ./Hiwonder/Peripherals/display_st7735.su ./Hiwonder/Peripherals/encoder_motor.cyclo ./Hiwonder/Peripherals/encoder_motor.d ./Hiwonder/Peripherals/encoder_motor.o ./Hiwonder/Peripherals/encoder_motor.su ./Hiwonder/Peripherals/imu.cyclo ./Hiwonder/Peripherals/imu.d ./Hiwonder/Peripherals/imu.o ./Hiwonder/Peripherals/imu.su ./Hiwonder/Peripherals/imu_mpu6050.cyclo ./Hiwonder/Peripherals/imu_mpu6050.d ./Hiwonder/Peripherals/imu_mpu6050.o ./Hiwonder/Peripherals/imu_mpu6050.su ./Hiwonder/Peripherals/led.cyclo ./Hiwonder/Peripherals/led.d ./Hiwonder/Peripherals/led.o ./Hiwonder/Peripherals/led.su ./Hiwonder/Peripherals/pwm_servo.cyclo ./Hiwonder/Peripherals/pwm_servo.d ./Hiwonder/Peripherals/pwm_servo.o ./Hiwonder/Peripherals/pwm_servo.su ./Hiwonder/Peripherals/serial_servo.cyclo ./Hiwonder/Peripherals/serial_servo.d ./Hiwonder/Peripherals/serial_servo.o ./Hiwonder/Peripherals/serial_servo.su

.PHONY: clean-Hiwonder-2f-Peripherals

