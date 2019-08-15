#!/bin/bash
#/This script should be run by typing '. ./git-test.sh'

sudo apt-get update
sudo apt-get upgrade
sudo apt install cmake

sudo git clone https://github.com/merbanan/rtl_433.git  #Clones the git repository the sniffer program
cd rtl_433
mkdir build
cd build
cmake ..                                                #Makes files in the above directory
make                                                    #Makes files in current directory
sudo make install
sudo apt install mosquitto-clients
