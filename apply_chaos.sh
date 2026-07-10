#!/bin/bash
# NOME: apply_chaos.sh
# OBJETIVO: Injetar falhas controladas para testes de resiliência
# AUTOR: Juliano (SRE-Lab)

INTERFACE="wlp2s0b1"
TC="/usr/sbin/tc"

# 1. Observabilidade: Registrar estado atual antes da alteração
echo "[$(date)] Estado antes da injeção: $($TC qdisc show dev $INTERFACE)"

# 2. Segurança: Limpar qualquer regra prévia para evitar conflitos
sudo $TC qdisc del dev $INTERFACE root 2>/dev/null

# 3. Injeção: Aplicar a falha (Perda + Latência)
sudo $TC qdisc add dev $INTERFACE root netem loss 5% delay 50ms

# 4. Verificação: Confirmar se a regra foi aplicada corretamente
echo "[$(date)] Novo estado: $($TC qdisc show dev $INTERFACE)"
