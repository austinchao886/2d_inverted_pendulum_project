################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hiwonder/Misc/log.c \
../Hiwonder/Misc/packet.c \
../Hiwonder/Misc/pid.c \
../Hiwonder/Misc/sbus.c \
../Hiwonder/Misc/syscall.c 

OBJS += \
./Hiwonder/Misc/log.o \
./Hiwonder/Misc/packet.o \
./Hiwonder/Misc/pid.o \
./Hiwonder/Misc/sbus.o \
./Hiwonder/Misc/syscall.o 

C_DEPS += \
./Hiwonder/Misc/log.d \
./Hiwonder/Misc/packet.d \
./Hiwonder/Misc/pid.d \
./Hiwonder/Misc/sbus.d \
./Hiwonder/Misc/syscall.d 


# Each subdirectory must supply rules for building sources it contributes
Hiwonder/Misc/%.o Hiwonder/Misc/%.su Hiwonder/Misc/%.cyclo: ../Hiwonder/Misc/%.c Hiwonder/Misc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/RTT" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/System" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Peripherals" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/MDK-ARM" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Portings" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Lw" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Misc" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Chassis" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_customer_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Hiwonder-2f-Misc

clean-Hiwonder-2f-Misc:
	-$(RM) ./Hiwonder/Misc/log.cyclo ./Hiwonder/Misc/log.d ./Hiwonder/Misc/log.o ./Hiwonder/Misc/log.su ./Hiwonder/Misc/packet.cyclo ./Hiwonder/Misc/packet.d ./Hiwonder/Misc/packet.o ./Hiwonder/Misc/packet.su ./Hiwonder/Misc/pid.cyclo ./Hiwonder/Misc/pid.d ./Hiwonder/Misc/pid.o ./Hiwonder/Misc/pid.su ./Hiwonder/Misc/sbus.cyclo ./Hiwonder/Misc/sbus.d ./Hiwonder/Misc/sbus.o ./Hiwonder/Misc/sbus.su ./Hiwonder/Misc/syscall.cyclo ./Hiwonder/Misc/syscall.d ./Hiwonder/Misc/syscall.o ./Hiwonder/Misc/syscall.su

.PHONY: clean-Hiwonder-2f-Misc

