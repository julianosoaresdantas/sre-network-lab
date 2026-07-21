# Passo 3: Defesa de Camada 3 e 4 (UFW Firewall) / L3 & L4 Defense (UFW Firewall)

**Data / Date:** 2026-07-21  
**Autor / Author:** Juliano Soares Dantas  

---

### [PT] Resumo das Ações
1. **Política Padrão Restritiva:** Tráfego de entrada (`incoming`) bloqueado por padrão (`deny`), tráfego de saída (`outgoing`) permitido (`allow`).
2. **Portas Essenciais Liberadas:** Acesso administrativo seguro via SSH (Porta 22) e tráfego Web HTTP/HTTPS (Portas 80 e 443).
3. **Ativação do UFW:** Firewall ativado permanentemente na inicialização do sistema, blindando o host contra varreduras de portas e acessos não autorizados.

### [EN] Summary of Actions
1. **Restrictive Default Policy:** Incoming traffic blocked by default (`deny`), outgoing traffic allowed (`allow`).
2. **Essential Ports Allowed:** Secure administrative access via SSH (Port 22) and Web HTTP/HTTPS traffic (Ports 80 and 443).
3. **UFW Activation:** Firewall permanently enabled on system startup, hardening the host against port scans and unauthorized access.
