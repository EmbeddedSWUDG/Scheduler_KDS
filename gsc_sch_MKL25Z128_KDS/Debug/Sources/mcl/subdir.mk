################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sources/mcl/ARM_SysTick.c \
../Sources/mcl/CrystalClock.c \
../Sources/mcl/interrupts.c 

OBJS += \
./Sources/mcl/ARM_SysTick.o \
./Sources/mcl/CrystalClock.o \
./Sources/mcl/interrupts.o 

C_DEPS += \
./Sources/mcl/ARM_SysTick.d \
./Sources/mcl/CrystalClock.d \
./Sources/mcl/interrupts.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/mcl/%.o: ../Sources/mcl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -I"C:\Users\uidp3590\Scheduler_KDS\gsc_sch_MKL25Z128_KDS\Sources\sys" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


