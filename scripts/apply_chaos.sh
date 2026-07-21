#!/bin/bash
INTERFACE="wlp2s0b1"
TC="/usr/sbin/tc"

echo "--- Chaos Injection Started: $(date) ---"
echo "Estado anterior:"
$TC qdisc show dev $INTERFACE

# Limpeza e Aplicação
sudo $TC qdisc del dev $INTERFACE root 2>/dev/null
sudo $TC qdisc add dev $INTERFACE root netem loss 5% delay 50ms

echo "--- Chaos Applied Successfully ---"
echo "Novo estado:"
$TC qdisc show dev $INTERFACE
