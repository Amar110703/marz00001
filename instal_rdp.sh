#!/bin/bash

echo "Masukan ip anda :"
read ip

echo "Masukan domain anda :"
read domain

echo "Masukan node domain anda :"
read node

echo "Halo, $ip! Selamat datang di script shell ini."
echo "$domain"
echo "$node"
echo -e "
"
bash <(curl -s https://pterodactyl-installer.se)
