################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third_Party/LVGL/src/lv_hal/lv_hal_disp.c \
../Third_Party/LVGL/src/lv_hal/lv_hal_indev.c \
../Third_Party/LVGL/src/lv_hal/lv_hal_tick.c 

OBJS += \
./Third_Party/LVGL/src/lv_hal/lv_hal_disp.o \
./Third_Party/LVGL/src/lv_hal/lv_hal_indev.o \
./Third_Party/LVGL/src/lv_hal/lv_hal_tick.o 

C_DEPS += \
./Third_Party/LVGL/src/lv_hal/lv_hal_disp.d \
./Third_Party/LVGL/src/lv_hal/lv_hal_indev.d \
./Third_Party/LVGL/src/lv_hal/lv_hal_tick.d 


# Each subdirectory must supply rules for building sources it contributes
Third_Party/LVGL/src/lv_hal/%.o Third_Party/LVGL/src/lv_hal/%.su Third_Party/LVGL/src/lv_hal/%.cyclo: ../Third_Party/LVGL/src/lv_hal/%.c Third_Party/LVGL/src/lv_hal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/RTT" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/System" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Peripherals" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/MDK-ARM" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Portings" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Lw" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Misc" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Chassis" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_customer_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Third_Party-2f-LVGL-2f-src-2f-lv_hal

clean-Third_Party-2f-LVGL-2f-src-2f-lv_hal:
	-$(RM) ./Third_Party/LVGL/src/lv_hal/lv_hal_disp.cyclo ./Third_Party/LVGL/src/lv_hal/lv_hal_disp.d ./Third_Party/LVGL/src/lv_hal/lv_hal_disp.o ./Third_Party/LVGL/src/lv_hal/lv_hal_disp.su ./Third_Party/LVGL/src/lv_hal/lv_hal_indev.cyclo ./Third_Party/LVGL/src/lv_hal/lv_hal_indev.d ./Third_Party/LVGL/src/lv_hal/lv_hal_indev.o ./Third_Party/LVGL/src/lv_hal/lv_hal_indev.su ./Third_Party/LVGL/src/lv_hal/lv_hal_tick.cyclo ./Third_Party/LVGL/src/lv_hal/lv_hal_tick.d ./Third_Party/LVGL/src/lv_hal/lv_hal_tick.o ./Third_Party/LVGL/src/lv_hal/lv_hal_tick.su

.PHONY: clean-Third_Party-2f-LVGL-2f-src-2f-lv_hal

