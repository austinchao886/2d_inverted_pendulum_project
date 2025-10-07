################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Third_Party/U8g2/subdir.mk
-include Third_Party/RTT/subdir.mk
-include Third_Party/Lw/subdir.mk
-include Third_Party/LVGL/src/lv_widgets/subdir.mk
-include Third_Party/LVGL/src/lv_themes/subdir.mk
-include Third_Party/LVGL/src/lv_misc/subdir.mk
-include Third_Party/LVGL/src/lv_hal/subdir.mk
-include Third_Party/LVGL/src/lv_gpu/subdir.mk
-include Third_Party/LVGL/src/lv_font/subdir.mk
-include Third_Party/LVGL/src/lv_draw/subdir.mk
-include Third_Party/LVGL/src/lv_core/subdir.mk
-include Third_Party/LVGL/porting/subdir.mk
-include Third_Party/Fusion/Fusion/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/subdir.mk
-include Hiwonder/System/subdir.mk
-include Hiwonder/Portings/subdir.mk
-include Hiwonder/Peripherals/subdir.mk
-include Hiwonder/Misc/subdir.mk
-include Hiwonder/LVGL_UI/images/subdir.mk
-include Hiwonder/LVGL_UI/guider_fonts/subdir.mk
-include Hiwonder/LVGL_UI/subdir.mk
-include Hiwonder/Chassis/subdir.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := RosRobotControllerM4_mecanum_12V
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
RosRobotControllerM4_mecanum_12V.elf \

MAP_FILES += \
RosRobotControllerM4_mecanum_12V.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
RosRobotControllerM4_mecanum_12V.list \


# All Target
all: main-build

# Main-build Target
main-build: RosRobotControllerM4_mecanum_12V.elf secondary-outputs

# Tool invocations
RosRobotControllerM4_mecanum_12V.elf RosRobotControllerM4_mecanum_12V.map: $(OBJS) $(USER_OBJS) C:\Users\Austinchao\Desktop\2D_Inverted_Pendulum_Project\hardware\mecanum_controller\RosRobotControllerM4_mecanum_12V\STM32F407VETX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "RosRobotControllerM4_mecanum_12V.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\Austinchao\Desktop\2D_Inverted_Pendulum_Project\hardware\mecanum_controller\RosRobotControllerM4_mecanum_12V\STM32F407VETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="RosRobotControllerM4_mecanum_12V.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

RosRobotControllerM4_mecanum_12V.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "RosRobotControllerM4_mecanum_12V.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) RosRobotControllerM4_mecanum_12V.elf RosRobotControllerM4_mecanum_12V.list RosRobotControllerM4_mecanum_12V.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
