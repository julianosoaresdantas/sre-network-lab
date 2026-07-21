# Passo 4: WAF (Camada 7), Blacklist de IPs e Geo-Bloqueio / WAF, IP Blacklist & Geo-Blocking

**Data / Date:** 2026-07-21  
**Autor / Author:** Juliano Soares Dantas  

---

### [PT] Resumo das Ações
1. **Estratégia de Camada 7:** Configuração de WAF e regras de inspeção de tráfego aplicadas para mitigar padrões maliciosos, injeções e varreduras de aplicação.
2. **Blacklist de IPs:** Implementado mapeamento de IPs maliciosos conhecidos via diretiva `geo` para barrar conexões indesejadas com código `403 Forbidden`.
3. **Resiliência:** Reforço da arquitetura para garantir que requisições malformadas ou de origens suspeitas sejam interceptadas antes de atingirem a aplicação core.

### [EN] Summary of Actions
1. **Layer 7 Strategy:** WAF configuration and traffic inspection rules applied to mitigate malicious patterns, injections, and application scans.
2. **IP Blacklist:** Implemented mapping for known malicious IPs via the `geo` directive to block unwanted connections with a `403 Forbidden` response.
3. **Resiliency:** Architectural reinforcement ensuring malformed requests or suspicious origins are intercepted before reaching the core application.
