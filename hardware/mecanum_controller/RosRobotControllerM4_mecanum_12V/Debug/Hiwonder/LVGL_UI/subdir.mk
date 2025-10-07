################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hiwonder/LVGL_UI/custom.c \
../Hiwonder/LVGL_UI/events_init.c \
../Hiwonder/LVGL_UI/gui_guider.c \
../Hiwonder/LVGL_UI/lvgl_handle.c \
../Hiwonder/LVGL_UI/setup_scr_screen_empty.c \
../Hiwonder/LVGL_UI/setup_scr_screen_imu.c \
../Hiwonder/LVGL_UI/setup_scr_screen_ps2.c \
../Hiwonder/LVGL_UI/setup_scr_screen_sbus.c \
../Hiwonder/LVGL_UI/setup_scr_screen_startup.c \
../Hiwonder/LVGL_UI/setup_scr_screen_sys.c 

OBJS += \
./Hiwonder/LVGL_UI/custom.o \
./Hiwonder/LVGL_UI/events_init.o \
./Hiwonder/LVGL_UI/gui_guider.o \
./Hiwonder/LVGL_UI/lvgl_handle.o \
./Hiwonder/LVGL_UI/setup_scr_screen_empty.o \
./Hiwonder/LVGL_UI/setup_scr_screen_imu.o \
./Hiwonder/LVGL_UI/setup_scr_screen_ps2.o \
./Hiwonder/LVGL_UI/setup_scr_screen_sbus.o \
./Hiwonder/LVGL_UI/setup_scr_screen_startup.o \
./Hiwonder/LVGL_UI/setup_scr_screen_sys.o 

C_DEPS += \
./Hiwonder/LVGL_UI/custom.d \
./Hiwonder/LVGL_UI/events_init.d \
./Hiwonder/LVGL_UI/gui_guider.d \
./Hiwonder/LVGL_UI/lvgl_handle.d \
./Hiwonder/LVGL_UI/setup_scr_screen_empty.d \
./Hiwonder/LVGL_UI/setup_scr_screen_imu.d \
./Hiwonder/LVGL_UI/setup_scr_screen_ps2.d \
./Hiwonder/LVGL_UI/setup_scr_screen_sbus.d \
./Hiwonder/LVGL_UI/setup_scr_screen_startup.d \
./Hiwonder/LVGL_UI/setup_scr_screen_sys.d 


# Each subdirectory must supply rules for building sources it contributes
Hiwonder/LVGL_UI/%.o Hiwonder/LVGL_UI/%.su Hiwonder/LVGL_UI/%.cyclo: ../Hiwonder/LVGL_UI/%.c Hiwonder/LVGL_UI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/RTT" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/System" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Peripherals" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/MDK-ARM" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Portings" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Lw" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Misc" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Chassis" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_customer_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Hiwonder-2f-LVGL_UI

clean-Hiwonder-2f-LVGL_UI:
	-$(RM) ./Hiwonder/LVGL_UI/custom.cyclo ./Hiwonder/LVGL_UI/custom.d ./Hiwonder/LVGL_UI/custom.o ./Hiwonder/LVGL_UI/custom.su ./Hiwonder/LVGL_UI/events_init.cyclo ./Hiwonder/LVGL_UI/events_init.d ./Hiwonder/LVGL_UI/events_init.o ./Hiwonder/LVGL_UI/events_init.su ./Hiwonder/LVGL_UI/gui_guider.cyclo ./Hiwonder/LVGL_UI/gui_guider.d ./Hiwonder/LVGL_UI/gui_guider.o ./Hiwonder/LVGL_UI/gui_guider.su ./Hiwonder/LVGL_UI/lvgl_handle.cyclo ./Hiwonder/LVGL_UI/lvgl_handle.d ./Hiwonder/LVGL_UI/lvgl_handle.o ./Hiwonder/LVGL_UI/lvgl_handle.su ./Hiwonder/LVGL_UI/setup_scr_screen_empty.cyclo ./Hiwonder/LVGL_UI/setup_scr_screen_empty.d ./Hiwonder/LVGL_UI/setup_scr_screen_empty.o ./Hiwonder/LVGL_UI/setup_scr_screen_empty.su ./Hiwonder/LVGL_UI/setup_scr_screen_imu.cyclo ./Hiwonder/LVGL_UI/setup_scr_screen_imu.d ./Hiwonder/LVGL_UI/setup_scr_screen_imu.o ./Hiwonder/LVGL_UI/setup_scr_screen_imu.su ./Hiwonder/LVGL_UI/setup_scr_screen_ps2.cyclo ./Hiwonder/LVGL_UI/setup_scr_screen_ps2.d ./Hiwonder/LVGL_UI/setup_scr_screen_ps2.o ./Hiwonder/LVGL_UI/setup_scr_screen_ps2.su ./Hiwonder/LVGL_UI/setup_scr_screen_sbus.cyclo ./Hiwonder/LVGL_UI/setup_scr_screen_sbus.d ./Hiwonder/LVGL_UI/setup_scr_screen_sbus.o ./Hiwonder/LVGL_UI/setup_scr_screen_sbus.su ./Hiwonder/LVGL_UI/setup_scr_screen_startup.cyclo ./Hiwonder/LVGL_UI/setup_scr_screen_startup.d ./Hiwonder/LVGL_UI/setup_scr_screen_startup.o ./Hiwonder/LVGL_UI/setup_scr_screen_startup.su ./Hiwonder/LVGL_UI/setup_scr_screen_sys.cyclo ./Hiwonder/LVGL_UI/setup_scr_screen_sys.d ./Hiwonder/LVGL_UI/setup_scr_screen_sys.o ./Hiwonder/LVGL_UI/setup_scr_screen_sys.su

.PHONY: clean-Hiwonder-2f-LVGL_UI

