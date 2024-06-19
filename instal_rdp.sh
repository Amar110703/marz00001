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
echo "$domain"
echo "$node"
echo "$user"
echo "$pw"
echo -e "
bash <(curl -s https://pterodactyl-installer.se)
sudo 0
sudo admin
sudo admin
sudo 1
sudo Asia/Jakarta
sudo admin@gmail.com
sudo admin@gmail.com
sudo $user
sudo $user
sudo $user
sudo $pw
$domain
sudo y
sudo y
sudo y
sudo y
sudo y
sudo yes
sudo a
