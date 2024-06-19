#!/bin/bash

# Pastikan script dijalankan sebagai root atau dengan akses sudo
if [ "$(id -u)" -ne 0 ]; then
  echo "Script harus dijalankan sebagai root atau dengan sudo."
  exit 1
fi

# Update repository dan instal dependencies
apt update
apt install -y xrdp xfce4 xfce4-goodies

# Konfigurasi sesuai kebutuhan
echo "xfce4-session" > ~/.xsession

# Mulai layanan xrdp
systemctl enable xrdp
systemctl start xrdp

# Konfigurasi firewall untuk mengizinkan koneksi RDP (port 3389)
ufw allow 3389/tcp

# Restart layanan xrdp
systemctl restart xrdp

echo "Instalasi RDP selesai. Silakan koneksikan menggunakan klien RDP ke IP VPS Anda."