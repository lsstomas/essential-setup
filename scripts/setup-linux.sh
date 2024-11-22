#!/bin/bash

# Script para configuração inicial do Linux
# Instruções: Execute com "bash setup-linux.sh"

# Atualização do sistema
sudo apt update && sudo apt upgrade -y

# Instalar pacotes essenciais
sudo apt install -y git curl wget
