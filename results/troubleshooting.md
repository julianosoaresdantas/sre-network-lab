# SRE Network Lab - Operational & Experiment Log / Log Operacional e de Experimentos

## 1. Troubleshooting History / Histórico de Solução de Problemas
| Date / Data | Issue / Problema | Root Cause / Causa Raiz | Solution / Solução |
| :--- | :--- | :--- | :--- |
| 2026-07-09 | `cd scripts` failed | Incorrect relative path | Use `cd ..` or absolute path |
| 2026-07-10 | `scripts` missing | Structural error | `mkdir -p scripts` |
| 2026-07-10 | Chaos tool missing | Missing `apply_chaos.sh` | Create script + `chmod +x` |
| 2026-07-10 | `ab`: Conn. refused | Web service stopped | `docker start ...` |
| 2026-07-10 | Port 80 conflict | Local Nginx active | `systemctl stop nginx` |

## 2. Performance Baseline / Linha de Base de Performance
| Metric / Métrica | Value / Valor |
| :--- | :--- |
| Test Date / Data do Teste | 2026-07-10 |
| Requests per second / Req. por segundo | 2735.04 [#/sec] |
| Time per request (mean) / Tempo médio | 3.656 [ms] |
| Failed requests / Req. Falhas | 0 |
| Concurrency Level / Nível de Concorrência | 10 |

## 3. Network Chaos Resilience / Resiliência ao Caos de Rede
| Date / Data | Loss / Perda | Delay / Atraso | RPS | Failed Req / Req. Falhas | Status |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2026-07-10 | 0% | 0ms | 2735 | 0 | Baseline / Base |
| 2026-07-10 | 15% | 150ms | 1576 | 0 | Degraded / Degradado |
| 2026-07-10 | 30% | 300ms | 1576 | 0 | Stressed / Estressado |

---
* Note: The system exhibits high protocol-level resiliency due to TCP retransmission mechanisms. 
* O sistema exibe alta resiliência em nível de protocolo devido aos mecanismos de retransmissão TCP.*
