#!/bin/bash

echo "masukan ip vps anda"
read ip

echo "masukan domain anda"
read domain

echo "masukan node domain anda"
read node

echo "Instalasi Pterodactyl dimulai..."

# Menjalankan installer Pterodactyl dengan curl dan expect
curl -s https://pterodactyl-installer.se | expect -c "
spawn bash
expect \"Enter 0\"
send \"0\r\"
expect eof
"

echo "Instalasi Pterodactyl selesai."
