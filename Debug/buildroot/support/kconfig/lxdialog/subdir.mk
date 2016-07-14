################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../buildroot/support/kconfig/lxdialog/checklist.c \
../buildroot/support/kconfig/lxdialog/inputbox.c \
../buildroot/support/kconfig/lxdialog/menubox.c \
../buildroot/support/kconfig/lxdialog/textbox.c \
../buildroot/support/kconfig/lxdialog/util.c \
../buildroot/support/kconfig/lxdialog/yesno.c 

OBJS += \
./buildroot/support/kconfig/lxdialog/checklist.o \
./buildroot/support/kconfig/lxdialog/inputbox.o \
./buildroot/support/kconfig/lxdialog/menubox.o \
./buildroot/support/kconfig/lxdialog/textbox.o \
./buildroot/support/kconfig/lxdialog/util.o \
./buildroot/support/kconfig/lxdialog/yesno.o 

C_DEPS += \
./buildroot/support/kconfig/lxdialog/checklist.d \
./buildroot/support/kconfig/lxdialog/inputbox.d \
./buildroot/support/kconfig/lxdialog/menubox.d \
./buildroot/support/kconfig/lxdialog/textbox.d \
./buildroot/support/kconfig/lxdialog/util.d \
./buildroot/support/kconfig/lxdialog/yesno.d 


# Each subdirectory must supply rules for building sources it contributes
buildroot/support/kconfig/lxdialog/%.o: ../buildroot/support/kconfig/lxdialog/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gcc -I"/home/rafael/projects/rewest/apl/include" -I"/home/rafael/projects/rewest/middleware/include" -I"/home/rafael/projects/rewest/hal/include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


