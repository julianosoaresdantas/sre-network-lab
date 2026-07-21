# Passo 2: Hardening Avançado do Nginx / Advanced Nginx Hardening

**Data / Date:** 2026-07-21  
**Autor / Author:** Juliano Soares Dantas  

---

### [PT] Resumo das Ações
1. **Rate Limiting:** Configurado limite restrito de 10 requisições por segundo por IP (`req_limit_per_ip`) com burst de 20 para evitar abusos.
2. **Timeouts Curtos:** Reduzidos para mitigar ataques de negação de serviço do tipo Slowloris (`keepalive_timeout`, `client_header_timeout`, `client_body_timeout`, `send_timeout` ajustados para 5s).
3. **Limites de Buffers:** Restringido o corpo máximo da requisição (`client_max_body_size 1m`) prevenindo estouros de buffer e uploads maliciosos.
4. **Validação:** Teste de sintaxe e inicialização bem-sucedidas via `sudo nginx -t`.

### [EN] Summary of Actions
1. **Rate Limiting:** Configured a strict limit of 10 requests per second per IP (`req_limit_per_ip`) with a burst of 20 to prevent abuse.
2. **Short Timeouts:** Reduced timeouts to mitigate Slowloris Denial of Service attacks (`keepalive_timeout`, `client_header_timeout`, `client_body_timeout`, `send_timeout` set to 5s).
3. **Buffer Limits:** Restricted max request body size (`client_max_body_size 1m`) preventing buffer overflows and malicious uploads.
4. **Validation:** Syntax test and service initialization successfully verified via `sudo nginx -t`.
