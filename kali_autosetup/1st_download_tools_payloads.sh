#!/bin/bash

# Create the necessary directories in /home/kali
mkdir -p /home/kali/tools /home/kali/scripts /home/kali/server /home/kali/loot /home/kali/custom_scripts /home/kali/vpn /home/kali/compile /home/kali/crack

# ENUMERATION AND SCANNING TOOLS

# autorecon from Tiberius
git clone https://github.com/Tib3rius/AutoRecon /home/kali/tools/AutoRecon

# enum4linux-ng git clone
git clone https://github.com/cddmp/enum4linux-ng /home/kali/tools/enum4linux-ng

# SMB Crawler - ManSpider
git clone https://github.com/blacklanternsecurity/MANSPIDER /home/kali/tools/MANSPIDER

# kerbrute tool - kerberos pre-auth bruteforcing
wget https://github.com/ropnop/kerbrute/releases/download/v1.0.3/kerbrute_linux_amd64 -P /home/kali/tools

# Sharphound for Bloodhound
wget https://github.com/BloodHoundAD/SharpHound/releases/download/v1.1.1/SharpHound-v1.1.1.zip -P /home/kali/server

# nmap binary download - ONLY USE FOR CTFs and to put on the jump box of a network
wget https://github.com/andrew-d/static-binaries/raw/master/binaries/linux/x86_64/nmap -P /home/kali/server

# AD and Windows Enumeration
wget https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Recon/PowerView.ps1 -P /home/kali/server
wget https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Privesc/PowerUp.ps1 -P /home/kali/server

# PAYLOADS AND REVERSE SHELLS

# ms word macro payload generator for reverse shells
git clone https://github.com/glowbase/macro_reverse_shell /home/kali/tools/macro_reverse_shell


# WEB CRAWLERS

# Powerful python based web crawler
git clone https://github.com/binux/pyspider /home/kali/tools/pyspider

# katana crawler binary
wget https://github.com/projectdiscovery/katana/releases/download/v1.0.4/katana_1.0.4_linux_amd64.zip -P /home/kali/tools

# Hakrawler
git clone https://github.com/hakluke/hakrawler /home/kali/tools/hakrawler


# WEB AND CLOUD RECON

# sub404 download to check for subdomain takeovers
git clone https://github.com/r3curs1v3-pr0xy/sub404 /home/kali/tools/sub404

#lazyS3 download
git clone https://github.com/nahamsec/lazys3 /home/kali/tools/lazys3


# WEB EXPLOIT TOOLS

# xsstrike tool download
git clone https://github.com/s0md3v/XSStrike /home/kali/tools/XSStrike

# MSOL Spray - o365 password spray
git clone https://github.com/dafthack/MSOLSpray /home/kali/tools/MSOLSpray

# dotdotpwn - for auto path traversal attacks
git clone https://github.com/wireghoul/dotdotpwn /home/kali/tools/dotdotpwn



# PRIVESC TOOLS
# Mimikatz - old and new
wget https://github.com/ParrotSec/mimikatz/raw/master/x64/mimikatz.exe -P /home/kali/server
wget -O /home/kali/server/old_mimikatz_trunk.zip https://github.com/caday00/mimikatz2.1.1/raw/master/mimikatz_trunk.zip

# Exploit Suggester for Linux and Windows
git clone https://github.com/The-Z-Labs/linux-exploit-suggester /home/kali/tools/linux-exploit-suggester
git clone https://github.com/AonCyberLabs/Windows-Exploit-Suggester /home/kali/tools/Windows-Exploit-Suggester

# AccessChk Download - you might have to download the older version that accepts eula from command line here: https://xor.cat/assets/other/Accesschk.zip
wget https://download.sysinternals.com/files/AccessChk.zip -P /home/kali/server

# Older accesschk
wget https://xor.cat/assets/other/Accesschk.zip -P /home/kali/server

# pypykatz git clone
git clone https://github.com/skelsec/pypykatz /home/kali/tools/pypykatz

# pspy - unprivileged Linux process snooping
git clone https://github.com/DominicBreuker/pspy /home/kali/tools/pspy
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.1/pspy64 -P /home/kali/server

# Windows Privesc 
wget https://raw.githubusercontent.com/CsEnox/EventViewer-UACBypass/main/Invoke-EventViewer.ps1 -P /home/kali/server
wget https://raw.githubusercontent.com/samratashok/nishang/master/Shells/Invoke-PowerShellTcp.ps1 -P /home/kali/server

# Seatbelt - Compiled by carlospolop
wget https://github.com/carlospolop/winPE/raw/master/binaries/seatbelt/SeatbeltNet3.5AnyCPU.exe -P /home/kali/server
wget https://github.com/carlospolop/winPE/raw/master/binaries/seatbelt/SeatbeltNet3.5x64.exe -P /home/kali/server
wget https://github.com/carlospolop/winPE/raw/master/binaries/seatbelt/SeatbeltNet3.5x86.exe -P /home/kali/server
wget https://github.com/carlospolop/winPE/raw/master/binaries/seatbelt/SeatbeltNet4AnyCPU.exe -P /home/kali/server
wget https://github.com/carlospolop/winPE/raw/master/binaries/seatbelt/SeatbeltNet4x64.exe -P /home/kali/server
wget https://github.com/carlospolop/winPE/raw/master/binaries/seatbelt/SeatbeltNet4x86.exe -P /home/kali/server


# POST EXPLOITATION

# Snaffler - Finds creds in Windows machine
# You can also just upload the .exe file to the target and it will immediately look for creds and other sensitive info in the domain
wget https://github.com/SnaffCon/Snaffler/releases/download/1.0.126/Snaffler.exe -P /home/kali/server

# Creds Dumping w/ LaZagne - Only Windows - go to repo to grab the Linux version
wget https://github.com/AlessandroZ/LaZagne/releases/download/v2.4.5/LaZagne.exe -P /home/kali/server


# PIVOTING
# Chisel - Pivoting
wget https://github.com/jpillora/chisel/releases/download/v1.8.1/chisel_1.8.1_windows_amd64.gz -P /home/kali/server
wget https://github.com/jpillora/chisel/releases/download/v1.8.1/chisel_1.8.1_linux_amd64.gz -P /home/kali/server



# CRACKING
# AutoNTDS - dumps NTDS and cracks with hashcat 
git clone https://github.com/hmaverickadams/autoNTDS /home/kali/tools/autoNTDS

# EVASION
# powershell command obfuscator
git clone https://github.com/danielbohannon/Invoke-Obfuscation /home/kali/tools/Invoke-Obfuscation


# MISC

# Parse through dehashed data using its API
git clone https://github.com/hmaverickadams/DeHashed-API-Tool /home/kali/tools/DeHashed-API-Tool

# Project Management and Report Writing with Ghostwriter
git clone https://github.com/GhostManager/Ghostwriter.git /home/kali/tools/Ghostwriter

















# chisel binaries for windows and linux
wget https://github.com/jpillora/chisel/releases/download/v1.9.1/chisel_1.9.1_linux_amd64.gz -P /home/kali/server
wget https://github.com/jpillora/chisel/releases/download/v1.9.1/chisel_1.9.1_windows_amd64.gz -P /home/kali/server

# PEASS - Privesc Tools
wget https://github.com/carlospolop/PEASS-ng/releases/download/20231112-0a42c550/linpeas.sh -P /home/kali/server
wget https://github.com/carlospolop/PEASS-ng/releases/download/20231112-0a42c550/winPEAS.bat -P /home/kali/server
wget https://github.com/carlospolop/PEASS-ng/releases/download/20231112-0a42c550/winPEASany.exe -P /home/kali/server
wget https://github.com/carlospolop/PEASS-ng/releases/download/20231112-0a42c550/winPEASx64.exe -P /home/kali/server

# PwnKit git clone
git clone https://github.com/ly4k/PwnKit /home/kali/server/PwnKit











# Really good API fuzzer 
wget https://github.com/assetnote/kiterunner/releases/download/v1.0.2/kiterunner_1.0.2_linux_amd64.tar.gz -P /home/kali/tools

# Refer to this link for use of all potatoes: https://jlajara.gitlab.io/Potatoes_Windows_Privesc

# Potatoes - Binaries
wget https://github.com/ohpe/juicy-potato/releases/download/v0.1/JuicyPotato.exe -P /home/kali/server
wget https://github.com/antonioCoco/RoguePotato/releases/download/1.0/RoguePotato.zip -P /home/kali/server
# This is the HOT POTATO binary
wget https://github.com/foxglovesec/Potato/raw/master/source/Potato/Potato/bin/Release/Potato.exe -P /home/kali/server
wget https://github.com/breenmachine/RottenPotatoNG/blob/master/RottenPotatoEXE/x64/Release/MSFRottenPotato.exe -P /home/kali/server

# god potato binary - new exploit
wget https://github.com/BeichenDream/GodPotato/releases/download/V1.20/GodPotato-NET4.exe -P /home/kali/server

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

# Octopii
git clone https://github.com/redhuntlabs/Octopii /home/kali/tools/Octopii

# PowerLess Shell - a way to bypass powershell restrictions by executing powershell scripts without powershell
git clone https://github.com/Mr-Un1k0d3r/PowerLessShell /home/kali/tools/PowerLessShell

# Drone exploit framework similar to metasploit
git clone https://github.com/dhondta/dronesploit /home/kali/tools/dronesploit

# arsenal toolkit - cheat sheet
git clone https://github.com/Orange-Cyberdefense/arsenal /home/kali/tools/arsenal

# Create alias for arsenal toolkit - type 'a' to run on zsh:
# alias a='arsenal'
echo "alias a='arsenal'" >> ~/.zshrc
