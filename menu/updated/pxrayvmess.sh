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
BRED="\e[41m"
# ==========================================
#information
OK="${GREEN}[OK]${NC}"
Error="${RED}[Mistake]${NC}"
clear
echo -e ""
echo -e "$BLUE╔═══════════════════════════════════════$BLUE╗"
echo -e "$BLUE║$NC $BRED             [ Vmeess Panel ]      $BLUE   ║"
echo -e "$BLUE╠═══════════════════════════════════════$BLUE╣"
echo -e "$BLUE║---------------------------------------║"
echo -e "$BLUE╠➣$NC 1$NC. Create Account XRAYS Vmess $BLUE      ║ "
echo -e "$BLUE╠➣$NC 2$NC. Delete Account XRAYS Vmess $BLUE      ║ "
echo -e "$BLUE╠➣$NC 3$NC. Check User Login           $BLUE      ║ "
echo -e "$BLUE╠➣$NC 4$NC. Rennew Account XRAYS Vmess $BLUE      ║ "
echo -e "$BLUE╠➣$NC 5$NC. Cek Detail AKun XRAYS Vmess $BLUE      ║ "
echo -e "$BLUE╠➣$NC 6$NC. Back To Menu               $BLUE      ║ "
echo -e "$BLUE║---------------------------------------║"
echo -e "$BLUE╚═══════════════════════════════════════╝$NC"  
read -p "Select From Options [ 1 - 6 ] : " menu
echo -e ""
case $menu in
1)
addvmess
;;
2)
dellvmess
;;
3)
cekxrayvmess
;;
4)
rennewvmess
;;
5)
cekdetailvmess
;;
6)
menu
;;
*)
clear
bash menu
;;
esac
