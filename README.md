# Rewest for Raspberry Pi
## Introduction
Rewest is a remote weather station project developed in Feevale University from Brazil. It's porpouse is to measure the weather confitions like temperature and humidity and send it to a cloud which can be accessed in [here]().

This repository contains all the documentation, and source codes to run and compile the application.

To develop the eclipse platform was chosen.

Bellow it is a small tutorial that will explain the list bellow
  - [Clone the repository](#clone-the-repository)
  - [Compile the Linux](#compile-the-linux)
  - [Setup device tree](#setup-device-tree)
  - [Write SD card](#write-sd-card)
  - [Enable SSH root login permission](#enable-SSH-root-login-permission)

If more information is needed, please refer to the [wiki](https://github.com/feevaleBR/rewestBR-RPi/wiki).

## Tutorial
  To be able to run the commands described bellow, you must have a Linux environment setted up. It is recommended an Ubuntu.
  
  If you computer is not linux native, a virtual machine from Virtual Box or VMWare can be setted up. The steps of how to set up an virtual machine can be easily found on Google, and it is not the pourpouse of this tutorial.
  
  After you're all set with the Linux lets start.
  
### Clone the repository
  To clone the repository type the commands bellow in a terminal window:
  
    $ cd <parentDirectory>
    $ git clone https://github.com/feevaleBR/rewestBR-RPi.git
  
### Compile the Linux
  This project uses buildroot to generate its embedded linux environment. In order to compile the embedded linux you must have internet connection and then type the commands bellow.
  
    $ cd <parentDirectory>/rewestBR-RPi/buildroot
    $ make rewestPi_defconfig       <-- Raspberry Pi B+ 
    $ **Not ready yet**             <-- Raspberry Pi 3
    $ make all

  After typing these commands you can probably get a cup of coffee because it will take a while.

### Setup device tree
  If you want to use the SPI or I2C, there is a need to set the device tree, which consists in enabling the SPI and I2C in the microprocessors pins. After you compile the linux an `output` folder is created. The linux is located under `output/build/linux-<hash>/`.

  In the linux folder there you shoulg go to the device tree source file.  If you're using the Raspberry Pi it is under `arch/arm/boot/dts`. In there you can find the correct `.dts` file and edit as you want. For this project tyoe the commands bellow that you'll be fine.

    $ cd output/build/linux-26f3b72a9c049be10e6af196252283e1f6ab9d1f/arch/arm/boot/dts
    $ sudo gedit bcm2708-rpi-b-plus.dts       <-- Raspberry Pi B+
    $ sudo gedit bcm2710-rpi-3-b.dts          <-- Raspberry Pi 3

  Gedit editor will open. Under the the SPI and I2C section add `status = "okay";` For example:

    &i2c0 {
        status = "okay";
        pinctrl-names = "default";
        pinctrl-0 = <&i2c0_pins>;
        clock-frequency = <100000>;
    };

  After editing the device tree source there is a need to recompile the linux. To do so type de commands bellow.

    $ cd <parentDirectory>/rewestBR-RPi/buildroot
    $ make linux-rebuild
    $ make
    
  It won't take as long as the first compilation. When the compilation is over the image will be in the directory `<parentDirectory>/rewestBR-RPi/buildroot/output/images` and its file name is `sdcard.img`.

### Write SD card
  To write the SD card, the command dd is used. An example is bellow.
  
    sudo dd if=<parentDirectory>/rewestBR-RPi/buildroot/output/images/sdcard.img of=/dev/sdX
  
  The directive `if` is the source file (the generated image) and the directive `of` is the destination. In the example `/dev/sdX` is the SD card.

### Enable SSH root login permission
  Connect the SD card to your computer opend the data partition and edit the file `etc/ssh/sshd_config`. Edit the line `# PermitRootLogin`. Delete the `#` and change the argument to `yes`.

