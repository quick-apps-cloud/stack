#!/bin/bash

# Função para verificar se o Docker está instalado
check_docker_installed() {
  if command -v docker &> /dev/null; then
    echo "Docker já está instalado."
    docker --version
    return 0
  else
    echo "Docker NÃO está instalado."
    return 1
  fi
}

# Exemplo de uso:
check_docker_installed
