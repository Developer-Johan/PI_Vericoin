#!/bin/bash

cd ~
clear

#Install git
echo "\e[32mInstall git\e[0m"
sudo apt -y install git

#Clone from git
echo "\e[32mClone from git\e[0m"
git clone -v https://github.com/Developer-Johan/PI_Vericoin.git ~/git/PI_Vericoin/


#run scripts for PI_Vericoin
cd ~/git/PI_Vericoin/Scripts/

#Run pi_update
sudo chmod u+x ./pi_update.sh
./pi_update.sh

#Run pi_installeprogramms
sudo chmod u+x ./pi_installeprogramms.sh
./pi_installeprogramms.sh

#Run pi_installdocker
sudo chmod u+x ./pi_installdocker.sh
./pi_installdocker.sh

#Run pi_setupdockervericoinvolume
sudo chmod u+x ./pi_setupdockervericoinvolume.sh
./pi_setupdockervericoinvolume.sh
