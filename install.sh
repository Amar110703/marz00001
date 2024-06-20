!/bin/bash

echo "masukan ip vps"
read ip
echo "masukan domain"
read domain
echo "masukan node domain"
read node
echo "masukan user untuk login ke panel"
read user
echo "masukan password untuk login ke panel"
read pw
echo "
"
echo " ip anda adalah $ip"
echo "domain anda adalah $domain"
echo "node anda adalah $node"
echo "user anda adalah $user"
echo "pw anda adalah $pw"
read -p "Apakah semua input Anda diatas sudah benar? (Y/N): " confirm
if [[ $confirm != "Y" && $confirm != "y" ]]; then
    echo "Proses instalasi dibatalkan."
    exit 1
fi

bash <(curl -s https://pterodactyl-installer.se)
