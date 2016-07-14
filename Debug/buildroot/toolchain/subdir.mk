################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../buildroot/toolchain/toolchain-wrapper.c 

OBJS += \
./buildroot/toolchain/toolchain-wrapper.o 

C_DEPS += \
./buildroot/toolchain/toolchain-wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
buildroot/toolchain/%.o: ../buildroot/toolchain/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gcc -I"/home/rafael/projects/rewest/apl/include" -I"/home/rafael/projects/rewest/middleware/include" -I"/home/rafael/projects/rewest/hal/include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


