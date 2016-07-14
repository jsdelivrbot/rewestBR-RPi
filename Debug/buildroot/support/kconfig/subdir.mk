################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../buildroot/support/kconfig/conf.c \
../buildroot/support/kconfig/confdata.c \
../buildroot/support/kconfig/expr.c \
../buildroot/support/kconfig/gconf.c \
../buildroot/support/kconfig/images.c \
../buildroot/support/kconfig/kxgettext.c \
../buildroot/support/kconfig/mconf.c \
../buildroot/support/kconfig/menu.c \
../buildroot/support/kconfig/nconf.c \
../buildroot/support/kconfig/nconf.gui.c \
../buildroot/support/kconfig/symbol.c \
../buildroot/support/kconfig/util.c 

CC_SRCS += \
../buildroot/support/kconfig/qconf.cc 

OBJS += \
./buildroot/support/kconfig/conf.o \
./buildroot/support/kconfig/confdata.o \
./buildroot/support/kconfig/expr.o \
./buildroot/support/kconfig/gconf.o \
./buildroot/support/kconfig/images.o \
./buildroot/support/kconfig/kxgettext.o \
./buildroot/support/kconfig/mconf.o \
./buildroot/support/kconfig/menu.o \
./buildroot/support/kconfig/nconf.o \
./buildroot/support/kconfig/nconf.gui.o \
./buildroot/support/kconfig/qconf.o \
./buildroot/support/kconfig/symbol.o \
./buildroot/support/kconfig/util.o 

C_DEPS += \
./buildroot/support/kconfig/conf.d \
./buildroot/support/kconfig/confdata.d \
./buildroot/support/kconfig/expr.d \
./buildroot/support/kconfig/gconf.d \
./buildroot/support/kconfig/images.d \
./buildroot/support/kconfig/kxgettext.d \
./buildroot/support/kconfig/mconf.d \
./buildroot/support/kconfig/menu.d \
./buildroot/support/kconfig/nconf.d \
./buildroot/support/kconfig/nconf.gui.d \
./buildroot/support/kconfig/symbol.d \
./buildroot/support/kconfig/util.d 

CC_DEPS += \
./buildroot/support/kconfig/qconf.d 


# Each subdirectory must supply rules for building sources it contributes
buildroot/support/kconfig/%.o: ../buildroot/support/kconfig/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gcc -I"/home/rafael/projects/rewest/apl/include" -I"/home/rafael/projects/rewest/middleware/include" -I"/home/rafael/projects/rewest/hal/include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

buildroot/support/kconfig/%.o: ../buildroot/support/kconfig/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-linux-g++ -I"/home/rafael/projects/rewest/apl/include" -I"/home/rafael/projects/rewest/middleware/include" -I"/home/rafael/projects/rewest/hal/include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


