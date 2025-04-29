#!/bin/bash

# Atualize os pacotes
sudo apt update && sudo apt upgrade -y

# Instale os pacotes necessários
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

# Adicione o repositório oficial do Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Instale o Docker
sudo apt update && sudo apt install docker-ce docker-ce-cli containerd.io -y

# Verifique a instalação
docker --version

# Inicie o serviço do Docker
sudo systemctl start docker

# Habilite o Docker para iniciar automaticamente
sudo systemctl enable docker

# Instale o Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Dê permissão de execução ao Docker Compose
sudo chmod +x /usr/local/bin/docker-compose

# Install Node.js
# sudo apt install nodejs -y

# Instalar o dotenv-vault
# docker run -w $(pwd) -v $(pwd):$(pwd) -it dotenv/dotenv-vault push

# Instalar o dotenv
# docker run -it --rm -v $(pwd):/app dotenv/dotenvx help