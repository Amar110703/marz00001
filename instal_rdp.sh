#!/bin/bash

echo "Masukan ip anda :"
read ip

echo "Masukan domain anda :"
read domain

echo "Masukan node domain anda :"
read node

echo "Masukan username untuk panel :"
read user

echo "Masukan password untuk panel :"
read pw

echo "Halo, $ip! Selamat datang di script shell ini."
echo ""

echo "Running Pterodactyl installer..."
echo ""

# Menjalankan installer Pterodactyl dengan curl
# Menggunakan expect untuk mengotomatiskan interaksi dengan input
curl -s https://pterodactyl-installer.se | expect -c "
spawn bash
expect \"0\"
send \"0\r\"
expect eof
"

echo "Instalasi selesai."
