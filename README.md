# Rewest for Raspberry Pi
## Introduction
Rewest is a remote weather station project developed in Feevale University from Brazil. It's porpouse is to measure the weather confitions like temperature and humidity and send it to a cloud which can be accessed in [here]().

This repository contains all the documentation, and source codes to run and compile the application.

To develop the eclipse platform was chosen.

Bellow it is a small tutorial that will explain the list bellow
  - [Clone the repository](#clone-the-repository)
  - [Compile the Linux](#compile-the-linux)
  - [Write SD card](#write-sd-card)

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
  
  When the compilation is over the image will be in the directory `<parentDirectory>/rewestBR-RPi/buildroot/output/images` and its file name is `sdcard.img`.
  
### Write SD card
  To write the SD card, the command dd is used. An example is bellow.
  
    sudo dd if=<parentDirectory>/rewestBR-RPi/buildroot/output/images/sdcard.img of=/dev/sdX
  
  The directive `if` is the source file (the generated image) and the directive `of` is the destination. In the example `/dev/sdX` is the SD card.
