#!/bin/bash
clear

vericoind -daemon -staking -conf=~/.vericoin/vericoin.conf -wallet=wallet.dat -walletpassphrase=whahanotgonnasharethat &

sleep 180

/root/scripts/vericoind_stake_start