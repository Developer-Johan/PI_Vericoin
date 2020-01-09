#!/bin/bash

#Create bootstrap
printf "\e[32mCreate bootstrap\e[0m\n"
printf "\e[33mCurrent path is: '`pwd`'\e[0m\n"

cd /root/.vericoin/
printf "Stopping vericoin\n"
vericoind stop

mkdir bootstrap
printf "Copy blk0001.data\n"
cp /root/.vericoin/blk0001.dat /root/.vericoin/bootstrap/
printf "Copy txleveldb\n"
cp -R /root/.vericoin/txleveldb/ /root/.vericoin/bootstrap/
printf "Zipping bootstrap\n"
zip -r bootstrap.zip bootstrap
printf "Remove bootstrap/\n"
rm -r bootstrap/
printf "Reboot\n"
reboot now
