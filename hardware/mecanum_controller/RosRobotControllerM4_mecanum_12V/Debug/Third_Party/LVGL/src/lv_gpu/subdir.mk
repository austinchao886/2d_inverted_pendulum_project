################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_pxp.c \
../Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_pxp_osa.c \
../Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_vglite.c \
../Third_Party/LVGL/src/lv_gpu/lv_gpu_stm32_dma2d.c 

OBJS += \
./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_pxp.o \
./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_pxp_osa.o \
./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_vglite.o \
./Third_Party/LVGL/src/lv_gpu/lv_gpu_stm32_dma2d.o 

C_DEPS += \
./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_pxp.d \
./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_pxp_osa.d \
./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_vglite.d \
./Third_Party/LVGL/src/lv_gpu/lv_gpu_stm32_dma2d.d 


# Each subdirectory must supply rules for building sources it contributes
Third_Party/LVGL/src/lv_gpu/%.o Third_Party/LVGL/src/lv_gpu/%.su Third_Party/LVGL/src/lv_gpu/%.cyclo: ../Third_Party/LVGL/src/lv_gpu/%.c Third_Party/LVGL/src/lv_gpu/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/RTT" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/System" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Peripherals" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/MDK-ARM" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Portings" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Lw" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Misc" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/Chassis" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/Fusion/Fusion" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Hiwonder/LVGL_UI/guider_customer_fonts" -I"C:/Users/Austinchao/Desktop/2D_Inverted_Pendulum_Project/hardware/mecanum_controller/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Third_Party-2f-LVGL-2f-src-2f-lv_gpu

clean-Third_Party-2f-LVGL-2f-src-2f-lv_gpu:
	-$(RM) ./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_pxp.cyclo ./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_pxp.d ./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_pxp.o ./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_pxp.su ./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_pxp_osa.cyclo ./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_pxp_osa.d ./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_pxp_osa.o ./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_pxp_osa.su ./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_vglite.cyclo ./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_vglite.d ./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_vglite.o ./Third_Party/LVGL/src/lv_gpu/lv_gpu_nxp_vglite.su ./Third_Party/LVGL/src/lv_gpu/lv_gpu_stm32_dma2d.cyclo ./Third_Party/LVGL/src/lv_gpu/lv_gpu_stm32_dma2d.d ./Third_Party/LVGL/src/lv_gpu/lv_gpu_stm32_dma2d.o ./Third_Party/LVGL/src/lv_gpu/lv_gpu_stm32_dma2d.su

.PHONY: clean-Third_Party-2f-LVGL-2f-src-2f-lv_gpu

