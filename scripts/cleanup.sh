#!/bin/bash
# Script para remover configurações de rede (TC) / Script to remove network configurations (TC)

INTERFACE="wlp2s0b1" 

echo "Removendo configurações de rede (TC) na interface $INTERFACE..."
echo "Removing network configurations (TC) on interface $INTERFACE..."

# Comando para deletar a raiz das regras de qdisc
# Command to delete the root qdisc rules
sudo tc qdisc del dev $INTERFACE root 2>/dev/null

if [ $? -eq 0 ]; then
    echo "Limpeza concluída! Rede restaurada ao estado original."
    echo "Cleanup complete! Network restored to original state."
else
    echo "Nenhuma configuração encontrada ou erro ao remover."
    echo "No configuration found or error during removal."
fi
