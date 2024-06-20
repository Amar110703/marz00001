#!/bin/bash

echo "Masukan ip anda"
read ip

echo "Masukan domain anda"
read domain

echo "Masukan node domain anda"
read node

echo "Masukan user untuk login ke panel"
read user

echo "Masukan password untuk login ke panel"
read pw

echo "Halo, $user! Selamat datang di script shell ini."
echo -e "
"
bash <(curl -s https://pterodactyl-installer.se)
echo "0" | instal.sh
