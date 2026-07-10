# Case Study: TCP Congestion Control & Network Resilience
# Estudo de Caso: Controle de Congestionamento TCP & Resiliência de Rede

## 1. Executive Summary / Resumo Executivo
This study investigates the behavior of Linux TCP congestion control algorithms (CUBIC vs. BBR) under adversarial network conditions. / Este estudo investiga o comportamento dos algoritmos de controle de congestionamento TCP do Linux (CUBIC vs. BBR) sob condições de rede adversas.



## 2. Methodology / Metodologia
The laboratory was set up using a Linux-based environment with the following tooling: / O laboratório foi montado usando um ambiente baseado em Linux com as seguintes ferramentas:

* **Network Chaos:** `tc` (Traffic Control) with `netem` to simulate 5% packet loss and 50ms round-trip delay. / Simulação de 5% de perda de pacotes e 50ms de latência.
* **Telemetry:** `ss -ti` for real-time analysis of congestion windows (`cwnd`) and delivery rates. / Análise em tempo real de janelas de congestionamento e taxas de entrega.
* **Load Testing:** `apache2-utils` (`ab`) to measure service performance under concurrent requests. / Teste de carga para medir performance do serviço.

## 3. Experimental Analysis / Análise Experimental

### A. Congestion Control Comparison / Comparação de Algoritmos
We injected network stress using: `sudo tc qdisc add dev <interface> root netem loss 5% delay 50ms`

| Metric / Métrica | CUBIC Behavior | BBR Behavior |
| :--- | :--- | :--- |
| **Congestion Window (cwnd)** | High volatility / Alta volatilidade | Stable/High growth / Estável/Crescimento alto |
| **Throughput / Vazão** | Significant drops / Quedas significativas | Resilient / Resiliente |
| **Strategy / Estratégia** | Reactive (Panic on loss) | Proactive (Model-based) |

### B. Service Performance (Grafana) / Performance do Serviço
* **Command:** `ab -n 2000 -c 50 http://localhost:3000/`
* **Outcome:** 2000 requests processed with 0 failures and 19ms mean latency. / 2000 requisições processadas com 0 falhas e 19ms de latência média.
* **Observation:** The system demonstrated high capacity under low latency, but transport layer metrics indicated the importance of `somaxconn` tuning. / O sistema demonstrou alta capacidade, mas as métricas da camada de transporte indicaram a importância do tuning de `somaxconn`.

## 4. Technical Conclusion / Conclusão Técnica
The experiment proves that **BBR is superior for volatile network conditions** typical of modern distributed systems. / O experimento prova que o **BBR é superior para condições de rede voláteis**, típicas de sistemas distribuídos modernos.

Proper Kernel tuning, specifically increasing `net.core.somaxconn` and adjusting buffer sizes, is non-negotiable for SREs. / Ajustes finos no Kernel, como aumentar o `net.core.somaxconn`, são inegociáveis para SREs.

---
*Documented by / Documentado por: [Juliano Soares Dantas]*
