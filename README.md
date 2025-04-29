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


# Guia de Instalação

1. Clonar o repositório dentro da máquina após formatar a máquina para Ubuntu 24.04.2 LTS

2. Executar o script `setup.sh` 

