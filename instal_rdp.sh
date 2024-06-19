#!/bin/bash

# Definisikan variabel yang diperlukan
pw="password"
domain="example.com"
ip="192.168.1.100"
node="node1"

# Menjalankan installer Pterodactyl dengan curl dan heredoc untuk mengirimkan input
curl -s https://pterodactyl-installer.se | bash -s -- <<EOF
$pw
$pw
$domain
$ip
$node
EOF

echo "Instalasi selesai."
