#!/bin/bash

echo "masukan ip vps anda"
read ip

echo "masukan domain anda"
read domain

echo "masukan node domain anda"
read node

pilih="0"

echo "Instalasi Pterodactyl dimulai..."

# Menjalankan installer Pterodactyl dengan curl dan heredoc untuk mengirimkan input
curl -s https://pterodactyl-installer.se | bash -s -- <<EOF
0
EOF

echo "Instalasi Pterodactyl selesai."
