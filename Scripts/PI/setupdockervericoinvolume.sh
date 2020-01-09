#!/bin/bash

#Creating docker volume for vericoin
printf "\e[32mCreating docker volume for vericoin\e[0m\n"
sudo chown $USER /var/lib/docker/ -R
mkdir -p /var/lib/docker/volumes/vericoind_root_home/_data/.vericoinnn/

cd /var/lib/docker/volumes/vericoind_root_home/_data/.vericoinnn/

if [ -f /var/lib/docker/volumes/vericoind_root_home/_data/.vericoinnn/vericoin.conf ]
	then
		printf "\e[31mvericoin.conf already exsist\e[0m\n"
	else
		printf "\e[32mGetting vericoin.conf\e[0m\n"
		cp ~/git/PI_Vericoin/Data/vericoin.conf ./
fi

if [ -f /var/lib/docker/volumes/vericoind_root_home/_data/.vericoinnn/blk0001.dat ]
	then
		printf "\e[31mblk0001.dat already exsist\e[0m\n"
	else
		printf "\e[32mGetting bootstrap.zip\e[0m\n"
		wget https://uc06db72e0d191b4df8155bc2d22.dl.dropboxusercontent.com/cd/0/get/Av2pJ1i1gCDHrRTvyVzdtcDAsiB5BX-VwdZQFbY6xQUqSdyleqxqmt9jJ_7KiH6a85iZqt5E47RnA0cWsuSUZJUIXX7bKc5L7tbbB3DjFslpvKjtbT-gJrsjSotHJ_kedYk/file?dl=1# -O bootstrap.zip
		printf "\e[32mUnzipping bootstrap.zip\e[0m\n"
		unzip -q bootstrap.zip
		cd ..
		mv .vericoinnn/bootstrap/* .vericoinnn/
		rm .vericoinnn/bootstrap/ -r
		rm .vericoinnn/bootstrap.zip 
fi

prinf "Creating scripts directory\n"
cd /var/lib/docker/volumes/vericoind_root_home/_data/
mkdir scripts
cd scripts/

for filename in ~/git/PI_Vericoin/Scripts/Vericoin/*; do
		printf "Copy to scripts folder: $filename\n"
		cp $filename ./
done

cd ~/