#!/bin/bash

#Create bootstrap
printf "\e[32mCreate bootstrap\e[0m\n"
printf "\e[33mCurrent path is: '`pwd`'\e[0m\n"


cd /var/lib/docker/volumes/vericoind_root_home/_data/.vericoin/
printf "Stopping vericoin\n"
docker exec -it vericoind stop

mkdir bootstrap
printf "Copy blk0001.data\n"
cp /var/lib/docker/volumes/vericoind_root_home/_data/.vericoin/blk0001.dat /var/lib/docker/volumes/vericoind_root_home/_data/.vericoin/bootstrap/
printf "Copy txleveldb/\n"
cp -R /var/lib/docker/volumes/vericoind_root_home/_data/.vericoin/txleveldb/ /var/lib/docker/volumes/vericoind_root_home/_data/.vericoin/bootstrap/
printf "Zipping bootstrap\n"
zip -r bootstrap.zip bootstrap
printf "Remove bootstrap/\n"
rm -r bootstrap/
printf "Reboot vericoind container\n"
docker restart vericoind
