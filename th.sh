#!/bin/bash

# Mensaje de introducción
echo "Este script instalará las siguientes herramientas en Termux:"
echo "1. Herramientas básicas: curl, wget, git, zip, unzip, tar"
echo "2. Python y herramientas de desarrollo"
echo "3. Node.js y herramientas de desarrollo"
echo "4. Herramientas de productividad: tmux, htop, neofetch"
echo "5. Midnight Commander (mc)"
echo "6. Herramientas de red: net-tools, nmap, dnsutils"
echo "7. Herramientas de texto y edición: vim, nano"
echo "8. Axel (descargador acelerado)"
echo "9. youtube-dl (descargador de videos de YouTube)"
echo "10. ffmpeg (librería multimedia)"
echo "---------------------------------------------"

# Confirmación de instalación
read -p "¿Deseas continuar con la instalación? (y/n): " choice
if [ "$choice" != "y" ]; then
    echo "Instalación cancelada."
    exit 0
fi

# Actualizar paquetes
pkg update
pkg upgrade

# Instalar herramientas básicas
pkg install -y curl wget git zip unzip tar

# Instalar Python y herramientas de desarrollo
pkg install -y python python-dev clang make openssl libffi-dev openssl-dev
pip install --upgrade pip virtualenv

# Instalar Node.js y herramientas de desarrollo
pkg install -y nodejs
npm install -g npm yarn

# Instalar herramientas de productividad
pkg install -y tmux htop neofetch

# Instalar Midnight Commander
pkg install -y mc

# Instalar herramientas de red
pkg install -y net-tools nmap dnsutils

# Instalar herramientas de texto y edición
pkg install -y vim nano

# Instalar Axel (descargador acelerado)
pkg install -y axel

# Instalar youtube-dl (descargador de videos de YouTube)
pkg install -y youtube-dl

# Instalar ffmpeg (librería multimedia)
pkg install -y ffmpeg

echo "Instalación completa de las herramientas más utilizadas en Termux."
