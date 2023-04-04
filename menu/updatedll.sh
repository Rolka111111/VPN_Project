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
# Getting
#
cd
# collor status
error1="${RED} [ERROR] ${NC}"
success="${GREEN} [OK] ${NC}"
# Cek Domain
source /var/lib/akbarstorevpn/ipvps.conf
if [[ "$IP" = "" ]]; then
    clear
    echo -e " ${error1}Gagal Install-Update.."
    sleep 2
    exit 0
else
    clear
    echo -e "${success}Installasi Update Menu..."
    sleep 2
fi
# ==========================================
# link hosting kalian
akbarvpn="https://raw.githubusercontent.com/owl64/VPN_Project/master/menu"
akbarvpnn="https://raw.githubusercontent.com/owl64/VPN_Project/master/menu/updated"
akbarvpnnn="https://raw.githubusercontent.com/owl64/VPN_Project/master/updated"
cd
rm -r updatedll
wget -O updatedll "https://raw.githubusercontent.com/owl64/VPN_Project/master/menu/updatedll.sh"
rm -rf updatedll

# hapus
cd /usr/bin
rm -rf xmenu
rm -rf updatedll
rm -r updatedll
# download
#
cd /usr/bin
# update by Andi64
wget -O updatedll "https://raw.githubusercontent.com/owl64/VPN_Project/master/menu/updatedll.sh"
wget -O restart-xray "https://raw.githubusercontent.com/owl64/VPN_Project/master/menu/restart-xray.sh"
wget -O cek-port "https://raw.githubusercontent.com/owl64/VPN_Project/master/menu/cek-port.sh"
# Update menu
wget -O menu "${akbarvpnn}/menu.sh"
wget -O msettings "${akbarvpnn}/msetting.sh"
wget -O maddxray "${akbarvpnn}/maddxray.sh"
wget -O start-menu "${akbarvpnn}/start-menu.sh"
wget -O pshadowshock "https://${akbarvpnn}/pshadowshock.sh"
wget -O ptrojan "https://${akbarvpnn}/ptrojan.sh"
wget -O pxrayvless "https://${akbarvpnn}/pxrayvless.sh"
wget -O pxrayvmess "https://${akbarvpnn}/pxrayvmess.sh"
# update xray menu
wget -O addvmess "${akbarvpnnn}/addvmess.sh"
wget -O dellvmess "${akbarvpnnn}/dellvmess.sh"
wget -O rennewvmess "${akbarvpnnn}/rennewvmess.sh"
wget -O addvless "${akbarvpnnn}/addvless.sh"
wget -O dellvless "${akbarvpnnn}/dellvless.sh"
wget -O rennewvless "${akbarvpnnn}/rennewvless.sh"
wget -O addtrojan "${akbarvpnnn}/addtrojan.sh"
wget -O delltrojan "${akbarvpnnn}/delltrojan.sh"
wget -O rennewtrojan "${akbarvpnnn}/rennewtrojan.sh"
wget -O addss "${akbarvpnnn}/addss.sh"
wget -O dellss "${akbarvpnnn}/dellss.sh"
wget -O rennewss "${akbarvpnnn}/rennewss.sh"
wget -O adddomain "${akbarvpnnn}/adddomain.sh"
wget -O chngedomain "${akbarvpnnn}/chngedomain.sh"
wget -O chngeport "${akbarvpnnn}/chngeport.sh"
wget -O certxray "${akbarvpnnn}/certxray.sh"
wget -O xp "${akbarvpnnn}/xp.sh"
wget -O cekxraytrojan "${akbarvpnnn}/cekxraytrojan.sh"
wget -O cekxrayvless "${akbarvpnnn}/cekxrayvless.sh"
wget -O cekxrayvmess "${akbarvpnnn}/cekxrayvmess.sh"

#
chmod +x /usr/bin/updatedll
chmod +x updatedll
chmod +x restart-xray
chmod +x cek-port
# update menu
chmod +x msettings
chmod +x maddxray
chmod +x start-menu
chmod +x menu
chmod +x pshadowshock
chmod +x ptrojan
chmod +x pxrayvless
chmod +x pxrayvmess
# update xray menu
chmod +x addvmess
chmod +x dellvmess
chmod +x rennewvmess
chmod +x addvless
chmod +x dellvless
chmod +x rennewvless
chmod +x addtrojan
chmod +x delltrojan
chmod +x rennewtrojan
chmod +x addss
chmod +x dellss
chmod +x rennewss
chmod +x certxray
chmod +x adddomain
chmod +x chngedomain
chmod +x chngeport
chmod +x xp
chmod +x cekxraytrojan
chmod +x cekxrayvless
chmod +x cekxrayvmess

clear
echo -e "Update Selesai..."
cd
