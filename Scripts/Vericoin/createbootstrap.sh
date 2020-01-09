#!/bin/bash

#Create bootstrap
printf "\e[32mCreate bootstrap\e[0m"
printf "\e[33mCurrent path is: '`pwd`'\e[0m"

cd /root/.vericoin/
printf "Stopping vericoin"
vericoind stop

mkdir bootstrap
printf "Copy blk0001.data"
cp /root/.vericoin/blk0001.dat /root/.vericoin/bootstrap/
printf "Copy txleveldb"
cp -R /root/.vericoin/txleveldb/ /root/data/.vericoin/bootstrap/
printf "Zipping bootstrap"
zip -r bootstrap.zip bootstrap
printf "Remove bootstrap/"
rm -r bootstrap/
printf "Reboot"
sudo reboot now
