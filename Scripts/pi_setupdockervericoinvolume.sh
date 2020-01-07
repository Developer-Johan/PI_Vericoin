#!/bin/bash

#Creating docker volume for vericoin
echo "\e[32mCreating docker volume for vericoin\e[0m"
sudo chown $USER /var/lib/docker/ -R
mkdir -p /var/lib/docker/volumes/vericoind_root_home/_data/.vericoin/


cd /var/lib/docker/volumes/vericoind_root_home/_data/.vericoin/
if [ -f /var/lib/docker/volumes/vericoind_root_home/_data/.vericoin/vericoin.conf ]
	then
		echo "\e[31mvericoin.conf already exsist\e[0m"
	else
		echo "\e[32mGetting vericoin.conf\e[0m"
		wget http://192.168.2.250/PI/Git/Data/vericoin.txt -O vericoin.conf
fi

if [ -f /var/lib/docker/volumes/vericoind_root_home/_data/.vericoin/blk0001.dat ]
	then
		echo "\e[31mblk0001.dat already exsist\e[0m"
	else
		echo "\e[32mGetting bootstrap.zip\e[0m"
		wget http://192.168.2.250/PI/Git/Data/bootstrap.zip -O bootstrap.zip
		echo "\e[32mUnzipping bootstrap.zip\e[0m"
		unzip -q bootstrap.zip
		cd ..
		mv .vericoin/bootstrap/* .vericoin/
		rm .vericoin/bootstrap/ -r
		rm .vericoin/bootstrap.zip 
fi

cd /var/lib/docker/volumes/vericoind_root_home/_data/

if [ -f /var/lib/docker/volumes/vericoind_root_home/_data/vericoind_startwithstake.sh ]
	then
		echo "\e[31mvericoind_startwithstake.sh already exsist\e[0m"
	else
		echo "\e[32mGetting vericoind_startwithstake.sh\e[0m"
		wget http://192.168.2.250/PI/Scripts/vericoin/vericoind_startwithstake.sh -O vericoind_startwithstake.sh
		sudo chmod +x vericoind_startwithstake.sh
fi

if [ -f /var/lib/docker/volumes/vericoind_root_home/_data/vericoind_stake_start.sh ]
	then
		echo "\e[31mvericoind_stake_start.sh already exsist\e[0m"
	else
		echo "\e[32mGetting vericoind_stake_start.sh\e[0m"
		wget http://192.168.2.250/PI/Scripts/vericoin/vericoind_stake_start.sh -O vericoind_stake_start.sh
		sudo chmod +x vericoind_stake_start.sh
fi