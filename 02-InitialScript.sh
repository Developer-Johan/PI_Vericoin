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

#Give all scripts righs
sudo find ~/git/PI_Vericoin/ -name '*.sh' -print0 | xargs -0 sudo chmod 755

#Run pi_update
sudo ./pi_update.sh

#Run pi_installeprogramms
sudo ./pi_installeprogramms.sh

#Run pi_installdocker
sudo ./pi_installdocker.sh

#Run pi_setupdockervericoinvolume
sudo ./pi_setupdockervericoinvolume.sh
