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
expect \"Enter your email address:\"
send \"\r\"
expect \"Enter your password:\"
send \"$pw\r\"
expect \"Confirm your password:\"
send \"$pw\r\"
expect \"FQDN for this instance:\"
send \"$domain\r\"
expect \"IP address the daemon should bind to:\"
send \"$ip\r\"
expect \"which should point to this server's IP address:\"
send \"$node\r\"
expect eof
"

echo "Instalasi Pterodactyl selesai."
