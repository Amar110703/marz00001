#!/bin/bash
echo "password"
read pw


# Menjalankan installer Pterodactyl dengan curl dan heredoc untuk mengirimkan input
curl -s https://pterodactyl-installer.se | bash -s -- <<EOF
0
$pw
EOF

echo "Instalasi selesai."
