#!/bin/bash

#Creating docker volume for vericoin
echo "\e[32mCreating docker volume for vericoin\e[0m"
sudo chown $USER /var/lib/docker/ -R
mkdir -p /var/lib/docker/volumes/vericoind_root_home/_data/.vericoinnn/

cd /var/lib/docker/volumes/vericoind_root_home/_data/.vericoinnn/

if [ -f /var/lib/docker/volumes/vericoind_root_home/_data/.vericoinnn/vericoin.conf ]
	then
		echo "\e[31mvericoin.conf already exsist\e[0m"
	else
		echo "\e[32mGetting vericoin.conf\e[0m"
		cp ~/git/PI_Vericoin/Data/vericoin.conf ./
fi

if [ -f /var/lib/docker/volumes/vericoind_root_home/_data/.vericoinnn/blk0001.dat ]
	then
		echo "\e[31mblk0001.dat already exsist\e[0m"
	else
		echo "\e[32mGetting bootstrap.zip\e[0m"
		wget https://uc1660f5f900674e35c3cbf01dd8.dl.dropboxusercontent.com/cd/0/get/Avxtjjuo4zjPgLE_eywNkFZdELQpkARB8JpP8Mu5Fls1vDeAIVc4AvC-zEl2yfxkwiH2LAiFcxyyQcNPJa4k1HLpkpwW0FJXKKZWQ6raTuYsMCp4ahOI5KOc_fPcWEp36YU/file?dl=1# -O bootstrap.zip
		echo "\e[32mUnzipping bootstrap.zip\e[0m"
		unzip -q bootstrap.zip
		cd ..
		mv .vericoinnn/bootstrap/* .vericoinnn/
		rm .vericoinnn/bootstrap/ -r
		rm .vericoinnn/bootstrap.zip 
fi




cd /var/lib/docker/volumes/vericoind_root_home/_data/

echo "Test 1"
for filename in ~/git/PI_Vericoin/Scripts/Vericoin/*; do
		echo "$filename"
		cp $filename ./
done
echo "Test 2"


#cd /var/lib/docker/volumes/vericoind_root_home/_data/

#if [ -f /var/lib/docker/volumes/vericoind_root_home/_data/vericoind_startwithstake.sh ]
#	then
#		echo "\e[31mvericoind_startwithstake.sh already exsist\e[0m"
#	else
#		echo "\e[32mGetting vericoind_startwithstake.sh\e[0m"
#		wget http://192.168.2.250/PI/Scripts/vericoin/vericoind_startwithstake.sh -O vericoind_startwithstake.sh
#		sudo chmod +x vericoind_startwithstake.sh
#fi

#if [ -f /var/lib/docker/volumes/vericoind_root_home/_data/vericoind_stake_start.sh ]
#	then
#		echo "\e[31mvericoind_stake_start.sh already exsist\e[0m"
#	else
#		echo "\e[32mGetting vericoind_stake_start.sh\e[0m"
#		wget http://192.168.2.250/PI/Scripts/vericoin/vericoind_stake_start.sh -O vericoind_stake_start.sh
#		sudo chmod +x vericoind_stake_start.sh
#fi

cd ~/