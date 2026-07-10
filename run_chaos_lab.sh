#!/bin/bash
# run_chaos_lab.sh - Orquestrador do Experimento de Caos
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
LOG_FILE="results/lab_run_$TIMESTAMP.txt"

echo "=== Iniciando Experimento de Caos: $TIMESTAMP ===" | tee $LOG_FILE

# 1. Captura de rede (Forensics)
./scripts/capture_pcap.sh &
PID_PCAP=$!

# 2. Injeção de Caos
./scripts/apply_chaos.sh | tee -a $LOG_FILE

# 3. Benchmark de carga
echo "Executando benchmark..."
ab -n 1000 -c 10 http://192.168.0.10/ >> $LOG_FILE

# 4. Limpeza (Cleanup)
echo "Limpando ambiente..."
sudo tc qdisc del dev wlp2s0b1 root
kill $PID_PCAP 2>/dev/null

echo "Experimento concluído. Resultado: $LOG_FILE"
