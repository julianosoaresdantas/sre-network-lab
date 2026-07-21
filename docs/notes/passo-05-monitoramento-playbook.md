# Passo 5: Monitoramento, Alertas (Prometheus/Grafana) e Playbook / Monitoring, Alerts & Incident Playbook

**Data / Date:** 2026-07-21  
**Autor / Author:** Juliano Soares Dantas  

---

## 1. Monitoramento e Alertas / Monitoring & Alerts
- **Prometheus & Grafana:** Configurados para coletar métricas de uso de CPU, memória, tráfego de rede e taxa de requisições por minuto (`requests per minute`).
- **Alertas Automáticos:** Gatilhos configurados para disparar notificações imediatas via canal de plantão (Slack/Discord/Telegram) caso o consumo de recursos ultrapasse 85% ou haja um pico anômalo de tráfego HTTP.

---

## 2. Playbook de Resposta a Incidentes / Incident Response Playbook

### [PT] Ações em Caso de Ataque ou Anomalia
1. **Identificação:** Verificar os dashboards do Grafana para confirmar a origem do pico de tráfego ou estresse de CPU.
2. **Ativação do Modo "Sob Ataque":**
   - Ativar o modo de mitigação avançada na borda (ex: Cloudflare *Under Attack Mode* / Regra de WAF restritiva).
   - Ajustar temporariamente as regras de *Rate Limiting* no Nginx se necessário.
3. **Bloqueio Upstream / ISP:** Contatar o provedor de hospedagem ou operador de rede para descartar tráfego volumétrico de negação de serviço (DDoS) na camada de borda do provedor.
4. **Comunicação:** Acionar a equipe de engenharia e SRE conforme escala de plantão.

### [EN] Actions in Case of Attack or Anomaly
1. **Identification:** Check Grafana dashboards to confirm the source of traffic spikes or CPU stress.
2. **Activate "Under Attack" Mode:**
   - Enable high-mitigation mode at the edge (e.g., Cloudflare Under Attack Mode / strict WAF rules).
   - Temporarily tighten Rate Limiting rules on Nginx if needed.
3. **Upstream / ISP Blocking:** Contact the hosting provider or network operator to drop volumetric DDoS traffic at the provider's edge layer.
4. **Communication:** Notify the engineering and SRE on-call team according to the escalation roster.

