################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hiwonder/USB_HOST/usbh_hid_gamepad.c 

OBJS += \
./Hiwonder/USB_HOST/usbh_hid_gamepad.o 

C_DEPS += \
./Hiwonder/USB_HOST/usbh_hid_gamepad.d 


# Each subdirectory must supply rules for building sources it contributes
Hiwonder/USB_HOST/%.o Hiwonder/USB_HOST/%.su Hiwonder/USB_HOST/%.cyclo: ../Hiwonder/USB_HOST/%.c Hiwonder/USB_HOST/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Austinchao/Desktop/Mecanum Chassis/RosRobotControllerM4_mecanum_12V/RosRobotControllerM4_mecanum_12V/Hiwonder" -I"C:/Users/Austinchao/Desktop/Mecanum Chassis/RosRobotControllerM4_mecanum_12V/RosRobotControllerM4_mecanum_12V/Third_Party" -I"C:/Users/Austinchao/Desktop/Mecanum Chassis/RosRobotControllerM4_mecanum_12V/RosRobotControllerM4_mecanum_12V/Third_Party/LVGL" -I"C:/Users/Austinchao/Desktop/Mecanum Chassis/RosRobotControllerM4_mecanum_12V/RosRobotControllerM4_mecanum_12V/Third_Party/RTT" -I"C:/Users/Austinchao/Desktop/Mecanum Chassis/RosRobotControllerM4_mecanum_12V/RosRobotControllerM4_mecanum_12V/Hiwonder/System" -I"C:/Users/Austinchao/Desktop/Mecanum Chassis/RosRobotControllerM4_mecanum_12V/RosRobotControllerM4_mecanum_12V/Hiwonder/Peripherals" -I"C:/Users/Austinchao/Desktop/Mecanum Chassis/RosRobotControllerM4_mecanum_12V/RosRobotControllerM4_mecanum_12V/MDK-ARM" -I"C:/Users/Austinchao/Desktop/Mecanum Chassis/RosRobotControllerM4_mecanum_12V/RosRobotControllerM4_mecanum_12V/Hiwonder/Portings" -I"C:/Users/Austinchao/Desktop/Mecanum Chassis/RosRobotControllerM4_mecanum_12V/RosRobotControllerM4_mecanum_12V/Third_Party/Lw" -I"C:/Users/Austinchao/Desktop/Mecanum Chassis/RosRobotControllerM4_mecanum_12V/RosRobotControllerM4_mecanum_12V/Hiwonder/Misc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Hiwonder-2f-USB_HOST

clean-Hiwonder-2f-USB_HOST:
	-$(RM) ./Hiwonder/USB_HOST/usbh_hid_gamepad.cyclo ./Hiwonder/USB_HOST/usbh_hid_gamepad.d ./Hiwonder/USB_HOST/usbh_hid_gamepad.o ./Hiwonder/USB_HOST/usbh_hid_gamepad.su

.PHONY: clean-Hiwonder-2f-USB_HOST

