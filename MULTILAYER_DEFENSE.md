# 🛡️ Arquitetura de Defesa em Múltiplas Camadas - SRE Lab

Este documento descreve a implementação prática de resiliência, segurança de borda, hardening de servidores web, observabilidade e planos de resposta a incidentes (Playbook) implementados no laboratório.

---

## 1. Borda Global, CDN e Mascaramento de IP (UFW Firewall)
O tráfego de internet é interceptado por uma CDN de borda (Anycast), mascarando o IP real do servidor de origem. O firewall local (UFW) foi configurado para aceitar tráfego nas portas `80` e `443` **estritamente** vindas das faixas oficiais da CDN:

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
# Liberação restrita de IPs de borda...
sudo ufw enable
