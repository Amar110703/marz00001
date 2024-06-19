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
"
bash <(curl -s https://pterodactyl-installer.se)
0
admin
admin
1
Asia/Jakarta
admin@gmail.com
admin@gmail.com
$user
$user
$user
$pw
$domain
y
y
y
y
y
yes
a
