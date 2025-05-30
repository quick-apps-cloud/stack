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

# Instalar o dotenv-vault
docker pull dotenv/dotenv-vault
echo 'alias dotenv-vault="docker run -w $(pwd) -v $(pwd):$(pwd) -it dotenv/dotenv-vault"' >> ~/.bashrc

# Instalar o dotenvx
docker pull dotenv/dotenvx
echo 'alias dotenvx="docker run -it --rm -v $(pwd):/app dotenv/dotenvx"' >> ~/.bashrc

# Definir mais alguns alias
echo 'alias chmodx="chmod -X ./**/*.sh"' >> ~/.bashrc
echo 'alias grk="git restore *"' >> ~/.bashrc
echo 'alias gck="git checkout ."' >> ~/.bashrc
echo 'alias gcm="git commit -m"' >> ~/.bashrc
echo 'alias gca="git commit --amend --no-edit"' >> ~/.bashrc
echo 'alias gpl="git pull"' >> ~/.bashrc
echo 'alias gpu="git push"' >> ~/.bashrc
echo 'alias gco="git checkout"' >> ~/.bashrc
echo 'alias gss="git status"' >> ~/.bashrc

# Carregar as regras do bashrc
source ~/.bashrc

# Verificar a instalação
dotenvx --version
dotenv-vault --version
