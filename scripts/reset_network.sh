#!/bin/bash
INTERFACE="wlp2s0b1"
sudo /usr/sbin/tc qdisc del dev $INTERFACE root 2>/dev/null
echo "Rede restaurada para o estado normal."
