#!/bin/bash
#/This script should be run by typing '. ./git-test.sh'

sudo apt-get update
sudo apt-get upgrade
sudo apt install cmake

sudo git clone https://github.com/merbanan/rtl_433.git
cd rtl_433
mkdir build
cd build
cmake ..
make
sudo make install
sudo apt install mosquitto-clients
