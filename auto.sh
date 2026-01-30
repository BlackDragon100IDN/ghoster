#!/bin/bash

echo "======================================"
echo " 🚀 AUTO SCRIPT GHOSTER MODE"
echo "======================================"

BASE_DIR=$(pwd)

echo "[1] Jalankan randomyakan.sh via curl..."
curl -fsSL https://raw.githubusercontent.com/BlackDragon100IDN/randomyakan/main/randomyakan.sh | bash

echo "======================================"
echo " ⏳ Tunggu 15 menit (900 detik)..."
echo "======================================"
sleep 900

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
