#!/bin/bash

cd ~
clear

#Install git
printf "\e[32mInstall git\e[0m\n"
sudo apt -y install git

#Clone from git
printf "\e[32mClone from git\e[0m\n"

if 
	cd ~/git/PI_Vericoin/; 
	then 
		git reset;
		git reset --hard
		git pull; 
	else 
		git clone -v https://github.com/Developer-Johan/PI_Vericoin.git ~/git/PI_Vericoin/
fi

#run scripts for PI_Vericoin
cd ~/git/PI_Vericoin/Scripts/PI/

#Give all scripts righs
sudo find ~/git/PI_Vericoin/ -name '*.sh' -print0 | xargs -0 sudo chmod +x

#Run update
./update.sh

#Run installeprogramms
./installeprogramms.sh

#Runinstalldocker
./installdocker.sh

#Run setupdockervericoinvolume
./setupdockervericoinvolume.sh

#Run createdockerfiles
./createdockerfiles.sh

#Run docker vericoin
echo "\e[32mRun docker vericoin\e[0m"
sudo docker run -d --restart=always --mount source=vericoind_root_home,target=/root -p 58684:58684 --name vericoind  vericoin /root/Script/vericoind_startwithstake.sh
