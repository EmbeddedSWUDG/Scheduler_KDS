################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sources/Test/Button.c \
../Sources/Test/RGB_LEDs.c 

OBJS += \
./Sources/Test/Button.o \
./Sources/Test/RGB_LEDs.o 

C_DEPS += \
./Sources/Test/Button.d \
./Sources/Test/RGB_LEDs.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/Test/%.o: ../Sources/Test/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -I"C:\Users\Miguel\Desktop\2016B\gsc_sch_MKL25Z128_KDS\Sources\sys" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


