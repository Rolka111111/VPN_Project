#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# =========================================
# Masih Tester
OK="${GREEN}[OK]${NC}"
Error="${RED}[Mistake]${NC}"
clear
echo -e "${OK}Sedang Melakukan Reset Harap Tunggu...."
#Pindah Direktori
cd /var/log/xray/
rm access.log
#Buat File Log Kosong
touch /var/log/xray/access.log
touch /var/log/xray/error.log
echo "${OK}Log Xray berhasil di reset"
sleep 3
restart-xray