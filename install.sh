#!/bin/bash

echo "Masukkan IP Anda:"
read ip
echo "Masukkan domain Anda:"
read domain
echo "Masukkan node domain Anda:"
read node
echo "Masukkan username untuk login ke panel:"
read user
echo "Masukkan password untuk login ke panel:"
read -s pw  # Menggunakan -s agar password tidak ditampilkan saat diketik

echo -e "\nHalo, $user! Selamat datang di script shell ini."

# Pastikan untuk mengecek dan mengizinkan user untuk memeriksa input mereka sebelum melanjutkan
read -p "Apakah semua input Anda sudah benar? (Y/N): " confirm
if [[ $confirm != "Y" && $confirm != "y" ]]; then
    echo "Proses instalasi dibatalkan."
    exit 1
fi

# Menjalankan skrip dari URL (harap pastikan keamanannya)
bash <(curl -s https://pterodactyl-installer.se)

# Menjalankan skrip install.sh dengan input 0
echo "0" | ./install.sh  # Sesuaikan dengan path yang benar jika perlu
