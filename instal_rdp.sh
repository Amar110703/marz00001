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

curl -s https://pterodactyl-installer.se | bash -s -- << EOF
0
EOF

echo "Instalasi selesai."
