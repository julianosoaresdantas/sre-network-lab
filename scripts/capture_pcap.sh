#!/bin/bash
# Captura de rede em segundo plano para o arquivo results/output.pcap
# Background network capture to results/output.pcap
OUTPUT_FILE="results/output.pcap"

echo "Iniciando captura em $OUTPUT_FILE..."
sudo tcpdump -i wlp2s0b1 -w "$OUTPUT_FILE" > /dev/null 2>&1 &
echo $! > results/capture.pid
echo "Captura iniciada com PID: $(cat results/capture.pid)"
