#!/bin/bash
clear

rm ~/.vericoin/debug.log
rm ~/.vericoin/db.log
vericoind -daemon -staking -conf=~/.vericoin/vericoin.conf &
###############vericoind -daemon -staking -conf=~/.vericoin/vericoin.conf -wallet=wallet.dat -walletpassphrase=whahanotgonnasharethat &
#sleep 1
#$VERICOIND_PID = $(pidof vericoind)
#/root/vericoind_monitordebuglog_multitail &
sleep 150
#########/root/vericoind_stake_start
sleep infinity
#wait $VERICOIND_PID
#echo "Vericoind process terminated..."
ps x > /root/psx