################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/port.c 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/port.o 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/port.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/%.o: ../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -DSTM32F746G_DISCO -DSTM32F746NGHx -DSTM32F7 -DSTM32 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/inc" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/CMSIS/core" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/CMSIS/device" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/HAL_Driver/Inc/Legacy" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/HAL_Driver/Inc" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Components/ampire480272" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Components/ampire640480" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Components/Common" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Components/exc7200" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Components/ft5336" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Components/mfxstm32l152" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Components/n25q128a" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Components/n25q512a" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Components/ov9655" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Components/rk043fn48h" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Components/s5k5cag" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Components/stmpe811" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Components/ts3510" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Components/wm8994" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Fonts" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/Log" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities" -I"C:/Users/emon1/STM32 AC6/STM32/FreeRTOS_Test1/ecte433/Utilities/STM32746G-Discovery" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


