################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third_Party/LVGL/src/lv_draw/lv_draw_arc.c \
../Third_Party/LVGL/src/lv_draw/lv_draw_blend.c \
../Third_Party/LVGL/src/lv_draw/lv_draw_img.c \
../Third_Party/LVGL/src/lv_draw/lv_draw_label.c \
../Third_Party/LVGL/src/lv_draw/lv_draw_line.c \
../Third_Party/LVGL/src/lv_draw/lv_draw_mask.c \
../Third_Party/LVGL/src/lv_draw/lv_draw_rect.c \
../Third_Party/LVGL/src/lv_draw/lv_draw_triangle.c \
../Third_Party/LVGL/src/lv_draw/lv_img_buf.c \
../Third_Party/LVGL/src/lv_draw/lv_img_cache.c \
../Third_Party/LVGL/src/lv_draw/lv_img_decoder.c 

OBJS += \
./Third_Party/LVGL/src/lv_draw/lv_draw_arc.o \
./Third_Party/LVGL/src/lv_draw/lv_draw_blend.o \
./Third_Party/LVGL/src/lv_draw/lv_draw_img.o \
./Third_Party/LVGL/src/lv_draw/lv_draw_label.o \
./Third_Party/LVGL/src/lv_draw/lv_draw_line.o \
./Third_Party/LVGL/src/lv_draw/lv_draw_mask.o \
./Third_Party/LVGL/src/lv_draw/lv_draw_rect.o \
./Third_Party/LVGL/src/lv_draw/lv_draw_triangle.o \
./Third_Party/LVGL/src/lv_draw/lv_img_buf.o \
./Third_Party/LVGL/src/lv_draw/lv_img_cache.o \
./Third_Party/LVGL/src/lv_draw/lv_img_decoder.o 

C_DEPS += \
./Third_Party/LVGL/src/lv_draw/lv_draw_arc.d \
./Third_Party/LVGL/src/lv_draw/lv_draw_blend.d \
./Third_Party/LVGL/src/lv_draw/lv_draw_img.d \
./Third_Party/LVGL/src/lv_draw/lv_draw_label.d \
./Third_Party/LVGL/src/lv_draw/lv_draw_line.d \
./Third_Party/LVGL/src/lv_draw/lv_draw_mask.d \
./Third_Party/LVGL/src/lv_draw/lv_draw_rect.d \
./Third_Party/LVGL/src/lv_draw/lv_draw_triangle.d \
./Third_Party/LVGL/src/lv_draw/lv_img_buf.d \
./Third_Party/LVGL/src/lv_draw/lv_img_cache.d \
./Third_Party/LVGL/src/lv_draw/lv_img_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
Third_Party/LVGL/src/lv_draw/%.o Third_Party/LVGL/src/lv_draw/%.su Third_Party/LVGL/src/lv_draw/%.cyclo: ../Third_Party/LVGL/src/lv_draw/%.c Third_Party/LVGL/src/lv_draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/RTT" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/System" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Peripherals" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/MDK-ARM" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Portings" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Lw" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Misc" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Chassis" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_customer_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Third_Party-2f-LVGL-2f-src-2f-lv_draw

clean-Third_Party-2f-LVGL-2f-src-2f-lv_draw:
	-$(RM) ./Third_Party/LVGL/src/lv_draw/lv_draw_arc.cyclo ./Third_Party/LVGL/src/lv_draw/lv_draw_arc.d ./Third_Party/LVGL/src/lv_draw/lv_draw_arc.o ./Third_Party/LVGL/src/lv_draw/lv_draw_arc.su ./Third_Party/LVGL/src/lv_draw/lv_draw_blend.cyclo ./Third_Party/LVGL/src/lv_draw/lv_draw_blend.d ./Third_Party/LVGL/src/lv_draw/lv_draw_blend.o ./Third_Party/LVGL/src/lv_draw/lv_draw_blend.su ./Third_Party/LVGL/src/lv_draw/lv_draw_img.cyclo ./Third_Party/LVGL/src/lv_draw/lv_draw_img.d ./Third_Party/LVGL/src/lv_draw/lv_draw_img.o ./Third_Party/LVGL/src/lv_draw/lv_draw_img.su ./Third_Party/LVGL/src/lv_draw/lv_draw_label.cyclo ./Third_Party/LVGL/src/lv_draw/lv_draw_label.d ./Third_Party/LVGL/src/lv_draw/lv_draw_label.o ./Third_Party/LVGL/src/lv_draw/lv_draw_label.su ./Third_Party/LVGL/src/lv_draw/lv_draw_line.cyclo ./Third_Party/LVGL/src/lv_draw/lv_draw_line.d ./Third_Party/LVGL/src/lv_draw/lv_draw_line.o ./Third_Party/LVGL/src/lv_draw/lv_draw_line.su ./Third_Party/LVGL/src/lv_draw/lv_draw_mask.cyclo ./Third_Party/LVGL/src/lv_draw/lv_draw_mask.d ./Third_Party/LVGL/src/lv_draw/lv_draw_mask.o ./Third_Party/LVGL/src/lv_draw/lv_draw_mask.su ./Third_Party/LVGL/src/lv_draw/lv_draw_rect.cyclo ./Third_Party/LVGL/src/lv_draw/lv_draw_rect.d ./Third_Party/LVGL/src/lv_draw/lv_draw_rect.o ./Third_Party/LVGL/src/lv_draw/lv_draw_rect.su ./Third_Party/LVGL/src/lv_draw/lv_draw_triangle.cyclo ./Third_Party/LVGL/src/lv_draw/lv_draw_triangle.d ./Third_Party/LVGL/src/lv_draw/lv_draw_triangle.o ./Third_Party/LVGL/src/lv_draw/lv_draw_triangle.su ./Third_Party/LVGL/src/lv_draw/lv_img_buf.cyclo ./Third_Party/LVGL/src/lv_draw/lv_img_buf.d ./Third_Party/LVGL/src/lv_draw/lv_img_buf.o ./Third_Party/LVGL/src/lv_draw/lv_img_buf.su ./Third_Party/LVGL/src/lv_draw/lv_img_cache.cyclo ./Third_Party/LVGL/src/lv_draw/lv_img_cache.d ./Third_Party/LVGL/src/lv_draw/lv_img_cache.o ./Third_Party/LVGL/src/lv_draw/lv_img_cache.su ./Third_Party/LVGL/src/lv_draw/lv_img_decoder.cyclo ./Third_Party/LVGL/src/lv_draw/lv_img_decoder.d ./Third_Party/LVGL/src/lv_draw/lv_img_decoder.o ./Third_Party/LVGL/src/lv_draw/lv_img_decoder.su

.PHONY: clean-Third_Party-2f-LVGL-2f-src-2f-lv_draw

