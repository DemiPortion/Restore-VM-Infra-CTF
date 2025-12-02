#!/bin/bash

echo "[BOOTSTRAP] Mise à jour du système..."
apt update -y && apt upgrade -y

echo "[BOOTSTRAP] Installation de Docker & Docker Compose..."
apt install -y \
    docker.io \
    docker-compose \
    git \
    curl

echo "[BOOTSTRAP] Activation du service Docker..."
systemctl enable docker
systemctl start docker

echo "[BOOTSTRAP] Installation terminée."
echo "[BOOTSTRAP] Vous pouvez maintenant lancer les stacks Docker : portainer.yml et monitoring.yml."
