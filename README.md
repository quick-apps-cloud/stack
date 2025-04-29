# Introdução

Este repositório serve como um guia completo para a stack da plataforma **Quick Apps**.

A **Quick Apps** é uma solução de Cloud baseada em uma rede de servidores interligados, utilizando **Docker Swarm** como ferramenta principal de orquestração de containers. O objetivo é fornecer uma infraestrutura robusta, escalável e de fácil gerenciamento para o deploy de aplicações modernas.

## O que você encontrará neste repositório

- **Visão Geral da Arquitetura:**  
  Explicação sobre como a rede de servidores é estruturada, incluindo conceitos de nodes managers e workers no Docker Swarm.

- **Guia de Instalação:**  
  Passo a passo para preparar servidores, instalar dependências e configurar o ambiente para rodar a stack Quick Apps.

- **Deploy de Aplicações:**  
  Exemplos práticos de como empacotar, publicar e escalar aplicações utilizando Docker Compose e Docker Swarm.

- **Gerenciamento e Monitoramento:**  
  Ferramentas e dicas para monitorar o cluster, gerenciar serviços, realizar atualizações e garantir alta disponibilidade.

- **Boas Práticas e Segurança:**  
  Recomendações para manter o ambiente seguro, eficiente e resiliente.

## Tecnologias Utilizadas

- **Docker & Docker Swarm:** Orquestração e gerenciamento de containers.
- **Traefik:** Proxy reverso e roteamento de tráfego.
- **Dokploy:** Interface gráfica moderna para gerenciamento e deploy de aplicações no cluster.
- **Prometheus & Grafana:** Monitoramento e visualização de métricas.
- **Outras ferramentas:** Scripts utilitários, automações e integrações.

---

Este guia é voltado tanto para iniciantes quanto para profissionais que desejam implantar e gerenciar aplicações em ambientes distribuídos com Docker Swarm. Sinta-se à vontade para contribuir, sugerir melhorias ou relatar problemas!


# Guia de instalação

Este guia fornece os passos necessários para configurar um servidor com a stack Quick Apps.

## 1. Preparação do Servidor

### Requisitos Mínimos
- Ubuntu Server (20.04 LTS ou superior)
- Mínimo 2GB RAM
- 20GB de espaço em disco
- Acesso root ou sudo

### Configuração Inicial

1. Primeiro, clone este repositório:
```bash
git clone https://github.com/quick-apps-cloud/stack.git
cd stack
```

2. Execute o script de setup automático:
```bash
chmod +x **/*.sh
sudo ./ubuntu/setup.sh
```

Este script irá:
- Atualizar o sistema
- Instalar o Docker e Docker Compose
- Configurar o Docker para iniciar automaticamente
- Instalar utilitários necessários (dotenvx e dotenv-vault)

## 2. Verificação da Instalação

Após a execução do script, verifique se tudo foi instalado corretamente:

```bash
# Verifique a versão do Docker
docker --version

# Verifique a versão do Docker Compose
docker-compose --version

# Verifique a versão do Dotenvx
dotenvx --version

# Verifique a versão do Dotenv-Vault
dotenv-vault --version
```

3. Configuração do Dotenv-Vault

Execute o comando abaixo apenas alterando o valor para o token disponível no site dotenv.org para a organização e projeto relacionados.

```
npx dotenv-vault login <SEU_TOKEN_ME>
```