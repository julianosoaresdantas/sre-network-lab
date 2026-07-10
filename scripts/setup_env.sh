#!/bin/bash
# Instala dependências do laboratório / Install lab dependencies

echo "Atualizando repositórios e instalando dependências..."
sudo apt-get update && sudo apt-get install -y iproute2 apache2-utils net-tools netdata

# Habilita e inicia o serviço de observabilidade
sudo systemctl enable netdata
sudo systemctl start netdata

echo "Dependências e Observabilidade configuradas!"
