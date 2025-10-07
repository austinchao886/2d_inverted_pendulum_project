################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third_Party/Lw/lwmem.c \
../Third_Party/Lw/lwmem_sys_cmsis_os.c \
../Third_Party/Lw/lwpkt.c \
../Third_Party/Lw/lwrb.c \
../Third_Party/Lw/lwshell.c 

OBJS += \
./Third_Party/Lw/lwmem.o \
./Third_Party/Lw/lwmem_sys_cmsis_os.o \
./Third_Party/Lw/lwpkt.o \
./Third_Party/Lw/lwrb.o \
./Third_Party/Lw/lwshell.o 

C_DEPS += \
./Third_Party/Lw/lwmem.d \
./Third_Party/Lw/lwmem_sys_cmsis_os.d \
./Third_Party/Lw/lwpkt.d \
./Third_Party/Lw/lwrb.d \
./Third_Party/Lw/lwshell.d 


# Each subdirectory must supply rules for building sources it contributes
Third_Party/Lw/%.o Third_Party/Lw/%.su Third_Party/Lw/%.cyclo: ../Third_Party/Lw/%.c Third_Party/Lw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/RTT" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/System" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Peripherals" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/MDK-ARM" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Portings" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Lw" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Misc" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Chassis" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_customer_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Third_Party-2f-Lw

clean-Third_Party-2f-Lw:
	-$(RM) ./Third_Party/Lw/lwmem.cyclo ./Third_Party/Lw/lwmem.d ./Third_Party/Lw/lwmem.o ./Third_Party/Lw/lwmem.su ./Third_Party/Lw/lwmem_sys_cmsis_os.cyclo ./Third_Party/Lw/lwmem_sys_cmsis_os.d ./Third_Party/Lw/lwmem_sys_cmsis_os.o ./Third_Party/Lw/lwmem_sys_cmsis_os.su ./Third_Party/Lw/lwpkt.cyclo ./Third_Party/Lw/lwpkt.d ./Third_Party/Lw/lwpkt.o ./Third_Party/Lw/lwpkt.su ./Third_Party/Lw/lwrb.cyclo ./Third_Party/Lw/lwrb.d ./Third_Party/Lw/lwrb.o ./Third_Party/Lw/lwrb.su ./Third_Party/Lw/lwshell.cyclo ./Third_Party/Lw/lwshell.d ./Third_Party/Lw/lwshell.o ./Third_Party/Lw/lwshell.su

.PHONY: clean-Third_Party-2f-Lw

