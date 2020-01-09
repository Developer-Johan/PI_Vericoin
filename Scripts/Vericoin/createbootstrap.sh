#!/bin/bash

#Create bootstrap
printf "\e[32mCreate bootstrap\e[0m"
printf "\e[33mCurrent path is: '`pwd`'\e[0m"

cd /root/.vericoin/
vericoind stop
mkdir bootstrap
cp /root/.vericoin/blk0001.dat /root/.vericoin/bootstrap/
cp -R /root/.vericoin/txleveldb/ /root/data/.vericoin/bootstrap/
zip -r bootstrap.zip bootstrap
rm -r bootstrap/
sudo reboot now
