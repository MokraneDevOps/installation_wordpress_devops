#!/bin/bash

# Met à jour la liste des paquets disponibles et met à jour le système
sudo apt update -y
sudo apt upgrade -y

# Installe les dépendances nécessaires
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

# Ajoute la clé GPG officielle de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Ajoute le dépôt Docker aux sources APT
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Met à jour la liste des paquets disponibles après l'ajout du dépôt Docker
sudo apt update -y

# Installe Docker
sudo apt install docker-ce docker-ce-cli containerd.io -y

# Ajoute l'utilisateur actuel au groupe Docker
sudo usermod -aG docker $USER

# Change les permissions du socket Docker (optionnel et non recommandé pour un usage en production)
sudo chmod 666 /var/run/docker.sock

# Recharge les groupes pour l'utilisateur actuel (il est souvent nécessaire de se déconnecter/reconnecter)
newgrp docker

# Vérifie l'installation de Docker
docker --version
