#!/bin/bash
INTERFACE="wlp2s0b1"
# Caminho absoluto para garantir execução
TC="/usr/sbin/tc"

sudo $TC qdisc del dev $INTERFACE root 2>/dev/null
sudo $TC qdisc add dev $INTERFACE root netem loss 5% delay 50ms
echo "Caos aplicado via $TC na interface $INTERFACE."
