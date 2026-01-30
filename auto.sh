#!/bin/bash

echo "======================================"
echo " 🚀 AUTO SCRIPT GHOSTER MODE"
echo "======================================"

BASE_DIR=$(pwd)

echo "[1] Jalankan randomyakan.sh via curl..."
curl -fsSL https://raw.githubusercontent.com/BlackDragon100IDN/randomyakan/main/randomyakan.sh | bash

echo "======================================"
echo " ⏳ Ghost mode aktif - Countdown 15 menit"
echo "======================================"

# Countdown 900 detik (15 menit)
SECONDS_LEFT=900
while [ $SECONDS_LEFT -gt 0 ]; do
    MIN=$((SECONDS_LEFT / 60))
    SEC=$((SECONDS_LEFT % 60))
    printf "\r🕒 Sisa waktu ghost mode: %02d:%02d " $MIN $SEC
    sleep 1
    SECONDS_LEFT=$((SECONDS_LEFT - 1))
done
echo -e "\n⏰ Waktu habis! Lanjut proses...\n"

echo "[2] Clone randomyakan repo..."
cd /root || exit
rm -rf randomyakan
git clone https://github.com/BlackDragon100IDN/randomyakan.git
cd randomyakan || exit

echo "[3] Jalankan deleterandom.sh..."
chmod +x deleterandom.sh
./deleterandom.sh

echo "======================================"
echo " ✅ SELESAI SEMUA PROSES"
echo "======================================"
