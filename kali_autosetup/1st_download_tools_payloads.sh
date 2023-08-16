#!/bin/bash

# Create the necessary directories in /home/kali
mkdir -p /home/kali/tools /home/kali/scripts /home/kali/server /home/kali/loot /home/kali/custom_scripts /home/kali/vpn /home/kali/compile

# Mimikatz - old and new
wget https://github.com/ParrotSec/mimikatz/raw/master/x64/mimikatz.exe -P /home/kali/server
wget -O /home/kali/server/old_mimikatz_trunk.zip https://github.com/caday00/mimikatz2.1.1/raw/master/mimikatz_trunk.zip

# AD and Windows Enumeration
wget https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Recon/PowerView.ps1 -P /home/kali/server
wget https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Privesc/PowerUp.ps1 -P /home/kali/server

# Exploit Suggester for Linux and Windows
git clone https://github.com/The-Z-Labs/linux-exploit-suggester /home/kali/tools/linux-exploit-suggester
git clone https://github.com/AonCyberLabs/Windows-Exploit-Suggester /home/kali/tools/Windows-Exploit-Suggester

# enum4linux-ng git clone
git clone https://github.com/cddmp/enum4linux-ng /home/kali/tools/enum4linux-ng

# SMB Crawler - ManSpider
git clone https://github.com/blacklanternsecurity/MANSPIDER /home/kali/tools/MANSPIDER

# xsstrike tool download
git clone https://github.com/s0md3v/XSStrike /home/kali/tools/XSStrike

# sub404 download to check for subdomain takeovers
git clone https://github.com/r3curs1v3-pr0xy/sub404 /home/kali/tools/sub404

#lazyS3 download
git clone https://github.com/nahamsec/lazys3 /home/kali/tools/lazys3

# MSOL Spray - o365 password spray
git clone https://github.com/dafthack/MSOLSpray /home/tools/MSOLSpray

# AccessChk Download
wget https://download.sysinternals.com/files/AccessChk.zip -P /home/kali/server

# Snaffler - Finds creds in Windows machine 
wget https://github.com/SnaffCon/Snaffler/releases/download/1.0.126/Snaffler.exe -P /home/kali/server

# Sharphound for Bloodhound
wget https://github.com/BloodHoundAD/SharpHound/releases/download/v1.1.1/SharpHound-v1.1.1.zip -P /home/kali/server

# PEASS - Privesc Tools
wget https://github.com/carlospolop/PEASS-ng/releases/download/20230724-3e05f4c7/linpeas.sh -P /home/kali/server
wget https://github.com/carlospolop/PEASS-ng/releases/download/20230724-3e05f4c7/winPEAS.bat -P /home/kali/server
wget https://github.com/carlospolop/PEASS-ng/releases/download/20230724-3e05f4c7/winPEASany.exe -P /home/kali/server
wget https://github.com/carlospolop/PEASS-ng/releases/download/20230724-3e05f4c7/winPEASx64.exe -P /home/kali/server

# Chisel - Pivoting
wget https://github.com/jpillora/chisel/releases/download/v1.8.1/chisel_1.8.1_windows_amd64.gz -P /home/kali/server
wget https://github.com/jpillora/chisel/releases/download/v1.8.1/chisel_1.8.1_linux_amd64.gz -P /home/kali/server

# Windows Privesc 
wget https://raw.githubusercontent.com/CsEnox/EventViewer-UACBypass/main/Invoke-EventViewer.ps1 -P /home/kali/server
wget https://raw.githubusercontent.com/samratashok/nishang/master/Shells/Invoke-PowerShellTcp.ps1 -P /home/kali/server

# Creds Dumping w/ LaZagne - Only Windows - go to repo to grab the Linux version
wget https://github.com/AlessandroZ/LaZagne/releases/download/v2.4.5/LaZagne.exe -P /home/kali/server

# Refer to this link for use of all potatoes: https://jlajara.gitlab.io/Potatoes_Windows_Privesc

# Potatoes - Binaries
wget https://github.com/ohpe/juicy-potato/releases/download/v0.1/JuicyPotato.exe -P /home/kali/server
wget https://github.com/antonioCoco/RoguePotato/releases/download/1.0/RoguePotato.zip -P /home/kali/server
# This is the HOT POTATO binary
wget https://github.com/foxglovesec/Potato/raw/master/source/Potato/Potato/bin/Release/Potato.exe -P /home/kali/server
wget https://github.com/breenmachine/RottenPotatoNG/blob/master/RottenPotatoEXE/x64/Release/MSFRottenPotato.exe -P /home/kali/server

# Potatoes to compile
# Note: this is HOT POTATO - there is a binary in the bin folder you can use
git clone https://github.com/foxglovesec/Potato /home/kali/compile/Potato

# Note: This is ROTTEN POTATO - binary is in x64/releases folder
git clone https://github.com/breenmachine/RottenPotatoNG /home/kali/compile/RottenPotatoNG

# Note: This is the repo for Juicy Potato
git clone https://github.com/ohpe/juicy-potato /home/kali/compile/juicy-potato

# Note: Sweet Potato repo
git clone https://github.com/CCob/SweetPotato /home/kali/compile/SweetPotato

# Note: Generic Potato repo
git clone https://github.com/micahvandeusen/GenericPotato /home/kali/compile/GenericPotato

# Rubeus - Repo but no binaries
git clone https://github.com/GhostPack/Rubeus.git /home/kali/server/Rubeus

# Rubeus - Binary download
wget https://github.com/Z333RO/security-tools-public/raw/main/odds_ends/Rubeus.exe -P /home/kali/server

# Windows PHP Reverse Shell Script 
wget https://raw.githubusercontent.com/sradigan/php_reverse_shell_windows/master/shell.php -P /home/kali/scripts/windows_php_shell.php
wget https://raw.githubusercontent.com/sradigan/php_reverse_shell_windows/master/shell.php -P /home/kali/server/windows_php_shell.php

# PrintNightmare Script
wget https://raw.githubusercontent.com/cube0x0/CVE-2021-1675/main/CVE-2021-1675.py -P /home/kali/scripts

# PrintSpoofer
wget https://github.com/itm4n/PrintSpoofer/releases/download/v1.0/PrintSpoofer32.exe -P /home/kali/server
wget https://github.com/itm4n/PrintSpoofer/releases/download/v1.0/PrintSpoofer64.exe -P /home/kali/server

# Rustscan
wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb -P /home/kali/tools
