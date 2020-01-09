#!/bin/bash

#Creating docker volume for vericoin
printf "\e[32mCreating docker volume for vericoin\e[0m\n"
sudo chown $USER /var/lib/docker/ -R
mkdir -p /var/lib/docker/volumes/vericoind_root_home/_data/.vericoin/

cd /var/lib/docker/volumes/vericoind_root_home/_data/.vericoin/

if [ -f /var/lib/docker/volumes/vericoind_root_home/_data/.vericoin/peers.dat ]
	then
		printf "\e[31mpeers.dat already exsist\e[0m\n"
	else
		printf "\e[32mGetting peers.dat\e[0m\n"
		cp ~/git/pi_vericoin/data/peers.dat ./
fi

if [ -f /var/lib/docker/volumes/vericoind_root_home/_data/.vericoin/vericoin.conf ]
	then
		printf "\e[31mvericoin.conf already exsist\e[0m\n"
	else
		printf "\e[32mGetting vericoin.conf\e[0m\n"
		cp ~/git/pi_vericoin/data/vericoin.conf ./
fi

if [ -f /var/lib/docker/volumes/vericoind_root_home/_data/.vericoin/blk0001.dat ]
	then
		printf "\e[31mblk0001.dat already exsist\e[0m\n"
	else
		printf "\e[32mGetting bootstrap.zip\e[0m\n"
		wget https://pivericoin.blob.core.windows.net/pivericoin/bootstrap.zip -O bootstrap.zip
		printf "\e[32mUnzipping bootstrap.zip\e[0m\n"
		unzip -q bootstrap.zip
		cd ..
		mv .vericoin/bootstrap/* .vericoin/
		rm .vericoin/bootstrap/ -r
		rm .vericoin/bootstrap.zip 
fi

prinf "Creating scripts directory\n"
cd /var/lib/docker/volumes/vericoind_root_home/_data/
mkdir scripts
cd scripts/

for filename in ~/git/pi_vericoin/Scripts/vericoin/*; do
		printf "Copy to scripts folder: $filename\n"
		cp $filename ./
done

cd ~/