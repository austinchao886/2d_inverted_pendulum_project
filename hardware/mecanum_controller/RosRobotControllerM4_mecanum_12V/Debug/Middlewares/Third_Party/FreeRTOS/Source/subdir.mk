################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/croutine.c \
../Middlewares/Third_Party/FreeRTOS/Source/event_groups.c \
../Middlewares/Third_Party/FreeRTOS/Source/list.c \
../Middlewares/Third_Party/FreeRTOS/Source/queue.c \
../Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.c \
../Middlewares/Third_Party/FreeRTOS/Source/tasks.c \
../Middlewares/Third_Party/FreeRTOS/Source/timers.c 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/Source/croutine.o \
./Middlewares/Third_Party/FreeRTOS/Source/event_groups.o \
./Middlewares/Third_Party/FreeRTOS/Source/list.o \
./Middlewares/Third_Party/FreeRTOS/Source/queue.o \
./Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.o \
./Middlewares/Third_Party/FreeRTOS/Source/tasks.o \
./Middlewares/Third_Party/FreeRTOS/Source/timers.o 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/croutine.d \
./Middlewares/Third_Party/FreeRTOS/Source/event_groups.d \
./Middlewares/Third_Party/FreeRTOS/Source/list.d \
./Middlewares/Third_Party/FreeRTOS/Source/queue.d \
./Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.d \
./Middlewares/Third_Party/FreeRTOS/Source/tasks.d \
./Middlewares/Third_Party/FreeRTOS/Source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/Source/%.o Middlewares/Third_Party/FreeRTOS/Source/%.su Middlewares/Third_Party/FreeRTOS/Source/%.cyclo: ../Middlewares/Third_Party/FreeRTOS/Source/%.c Middlewares/Third_Party/FreeRTOS/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/RTT" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/System" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Peripherals" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/MDK-ARM" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Portings" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Lw" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Misc" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Chassis" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_customer_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source

clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source:
	-$(RM) ./Middlewares/Third_Party/FreeRTOS/Source/croutine.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/croutine.d ./Middlewares/Third_Party/FreeRTOS/Source/croutine.o ./Middlewares/Third_Party/FreeRTOS/Source/croutine.su ./Middlewares/Third_Party/FreeRTOS/Source/event_groups.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/event_groups.d ./Middlewares/Third_Party/FreeRTOS/Source/event_groups.o ./Middlewares/Third_Party/FreeRTOS/Source/event_groups.su ./Middlewares/Third_Party/FreeRTOS/Source/list.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/list.d ./Middlewares/Third_Party/FreeRTOS/Source/list.o ./Middlewares/Third_Party/FreeRTOS/Source/list.su ./Middlewares/Third_Party/FreeRTOS/Source/queue.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/queue.d ./Middlewares/Third_Party/FreeRTOS/Source/queue.o ./Middlewares/Third_Party/FreeRTOS/Source/queue.su ./Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.d ./Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.o ./Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.su ./Middlewares/Third_Party/FreeRTOS/Source/tasks.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/tasks.d ./Middlewares/Third_Party/FreeRTOS/Source/tasks.o ./Middlewares/Third_Party/FreeRTOS/Source/tasks.su ./Middlewares/Third_Party/FreeRTOS/Source/timers.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/timers.d ./Middlewares/Third_Party/FreeRTOS/Source/timers.o ./Middlewares/Third_Party/FreeRTOS/Source/timers.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source

