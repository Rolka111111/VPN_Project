<p align="center">

# XRAY MULTI PORT MOD BY ANDI64
- ***Script XRAY Multi Port 443/80***
- ***Original Script By SL***

#

# FITUR XRAY TLS DAN NON TLS
- TROJAN WS        : **443**/**80**
- TROJAN GRPC      : **443**/**80**
- SHADOWSOCKS WS   : **443**/**80**
- SHADOWSOCKS GRPC : **443**/**80**
- VMESS WS         : **443**/**80**
- VMESS GRPC       : **443**/**80**
- VLESS WS         : **443**/**80**
- VLESS GRPC       : **443**/**80**

# MOD List & Updated
- Pengoptimalan Menu
- Menambahkan Tambah Domain Sebelum Install
- Pemisahan pembuatan dan penghapusan masing-masing akun service
- penambahan masa aktif/rennew akun
- fixed auto reboot 05:00 GTM +7 
- Add auto Expired
- add multi path Vmess dan Vless
- Fix Bug Backup and Restore
- Fix Bug Achme SSL 
- Fix Bug Cek User Login
- dll

# OS 
- Debian 9 (HVM)
- Debian 10
* Berhasil di gunakan di vps aws dan os debian 9 hvm
* untuk vps isp yg lain saya tidak tau, dan os yg lain juga saya tidak tau wkwk

# Syarat & Bahan Untuk Menggunakan Script Ini
- Wajib Punya VPS
- Wajib Punya Akun Cloudflare
- Wajib Punya Domain Kamu Sendiri
- ***Jika semua syarat dan Bahan sudah terpenuhi ,silahkan di coba script ini***

# Cara Install Script Nya
- Login ke VPS kamu ( wajib pake user ***root***)
1. MASUK KE VPS LALU KETIK
```
sudo su
```

2. Update Dulu VPS NYA

```
apt-get update && apt-get upgrade -y && update-grub && sleep 2 && reboot
```
- Otomatis Akan Reboot/ Hidupkan Ulang

3. Login Lagi Ke VPS NYA

4. Salin kode di bawah ini dan paste kan ke dalam vps punya kamu
- Jangan Menutup Terminal Sebelum Instalasi selesai
```
wget https://raw.githubusercontent.com/owl64/VPN_Project/master/setup.sh && chmod +x setup.sh && ./setup.sh
```
5. jika sudah selesai, untuk menampilkan menu Ketik

```
menu
```
7. DONE / SELESAI

# Info Perbaiki / FIX
- ***NOTE***
- jika xray dan nginx mengalami error !
- ketik
```
certxray
```
lalu ketik
```
restart-xray
```
# Update SCRIPT
Untuk melakukan Update Ketikan perintah berikut:
```
wget https://raw.githubusercontent.com/owl64/VPN_Project/master/menu/updated/getupdate.sh && chmod +x getupdate.sh && getupdate.sh
```
Lakukan Update tiap 3 bulan sekali

# INFO KODE SCRIPT
- menu (untuk menampilkan menu mod)
- restart-xray (hidupkan ulang xray)
- certxray (Perbarui Sertifikat / Update Certificate)

# SYARAT DAN KETENTUAN
- Dilarang keras menjual kembali Script ini
- Semuanya Gratis tanpa di pungut biyaya apapun
- Ketentuan dan Syarat bisa berubah sewaktu - waktu tanpa pemberitahuan
- Memakai Artinya SETUJU
- Tanya tanya silahkan Kemari, https://t.me/andiowl

# Traktir Kopi
- Gopay: 082217067357
- Dana: 082217067357
- Kunjungi Juga: https://sdc.my.id