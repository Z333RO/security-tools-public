#!/bin/bash

# Create the necessary directories in /home/kali
mkdir -p /home/kali/tools /home/kali/scripts /home/kali/server /home/kali/loot /home/kali/custom_scripts /home/kali/vpn /home/kali/compile /home/kali/crack

# ENUMERATION AND SCANNING TOOLS

# AutoRecon from Tiberius
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

# Rustscan
wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb -P /home/kali/tools

# Octopii
git clone https://github.com/redhuntlabs/Octopii /home/kali/tools/Octopii

# Really good API fuzzer 
wget https://github.com/assetnote/kiterunner/releases/download/v1.0.2/kiterunner_1.0.2_linux_amd64.tar.gz -P /home/kali/tools

# Nuclei Templates
git clone https://github.com/AggressiveUser/AllForOne /home/kali/tools/AllForOne
git clone https://github.com/xm1k3/cent /home/kali/tools/cent

# GAP Burp Extension
git clone https://github.com/xnl-h4ck3r/GAP-Burp-Extension /home/kali/tools/GAP-Burp-Extension

# JS Analysis Tool
git clone https://github.com/LewisArdern/metasecjs /home/kali/tools/metasecjs

# JS API Extractor
# Run the following commands to test:
# function jsurls { jsluice urls <(curl -sk "$1"); }
# jsurls {link to js file}
git clone https://github.com/BishopFox/jsluice /home/kali/tools/jsluice



# PAYLOADS AND REVERSE SHELLS

# ms word macro payload generator for reverse shells
git clone https://github.com/glowbase/macro_reverse_shell /home/kali/tools/macro_reverse_shell

# Windows PHP Reverse Shell Script 
wget https://raw.githubusercontent.com/sradigan/php_reverse_shell_windows/master/shell.php -P /home/kali/scripts/windows_php_shell.php
wget https://raw.githubusercontent.com/sradigan/php_reverse_shell_windows/master/shell.php -P /home/kali/server/windows_php_shell.php



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

# subfinder - fast subdomain enumeration tool - faster than Amass
wget https://github.com/projectdiscovery/subfinder/releases/download/v2.6.3/subfinder_2.6.3_linux_amd64.zip -P /home/kali/tools

# AI subdomain recon
git clone https://github.com/jhaddix/SubreconGPT /home/kali/tools/SubreconGPT

# Subdomain enumeration bruteforce
git clone https://github.com/d3mondev/puredns /home/kali/tools/puredns

#lazyS3 download
git clone https://github.com/nahamsec/lazys3 /home/kali/tools/lazys3

# Recon Frameworks
git clone https://github.com/six2dez/reconftw /home/kali/tools/reconftw
git clone https://github.com/yogeshojha/rengine /home/kali/tools/rengine

# Automated OSINT Recon Frameworks
git clone https://github.com/Dheerajmadhukar/karma_v2 /home/kali/tools/karma_v2
git clone https://github.com/blacklanternsecurity/bbot /home/kali/tools/bbot

# Bug Bounty Frameworks
git clone https://github.com/R-s0n/ars0n-framework /home/kali/tools/ars0n-framework

# Check MDI - Enumerate valid MS Domains
git clone https://github.com/expl0itabl3/check_mdi /home/kali/tools/check_mdi

# Shodan Scanner
git clone https://github.com/s0md3v/Smap /home/kali/tools/Smap

# Cloud Recon 
git clone https://github.com/g0ldencybersec/CloudRecon /home/kali/tools/CloudRecon

# All cloud ranges
wget https://raw.githubusercontent.com/lord-alfred/ipranges/main/all/ipv4_merged.txt -P /home/kali/tools

# Github Enumeration Tools
git clone https://github.com/gwen001/github-regexp /home/kali/tools/github-regexp

# Subdomain Recon via Github
git clone https://github.com/gwen001/github-subdomains /home/kali/tools/github-subdomains

# Favicon Analysis
git clone https://github.com/devanshbatham/FavFreak /home/kali/tools/FavFreak
git clone https://github.com/pielco11/fav-up /home/kali/tools/FavFreak

# JHaddix - Bounty Catch Script:
wget https://gist.githubusercontent.com/jhaddix/91035a01168902e8130a8e1bb383ae1e/raw/13bf7bafd2b3d62a2bc9ef354b38e1b589ef46be/bountycatch.py -P /home/kali/tools

# JHaddix - 2Recon Script:
wget https://gist.githubusercontent.com/jhaddix/676e25ec0ee289406d7bece1ab074b50/raw/0c148efd9c8fc161f6a358669e301b410beb5f0a/2recon.py -P /home/kali/tools

# JHaddix - Automated Google Dorks Script
# ./Gdorklinks.sh  NameOfSomeCompanyMaybe
wget https://gist.githubusercontent.com/jhaddix/1fb7ab2409ab579178d2a79959909b33/raw/e9fea4c0f6982546d90d241bc3e19627a7083e5e/Gdorklinks.sh -P /home/kali/tools

# JHaddix - wordlists
wget https://gist.githubusercontent.com/jhaddix/b80ea67d85c13206125806f0828f4d10/raw/c81a34fe84731430741e0463eb6076129c20c4c0/content_discovery_all.txt -P /home/kali/tools

# six2dez wordlist 
git clone https://github.com/six2dez/OneListForAll /home/kali/tools/OneListForAll

# Docker Inspector Tool
git clone https://github.com/wagoodman/dive /home/kali/tools/dive

# Get All URLs - Archive Pages Enumeration
git clone https://github.com/lc/gau /home/kali/tools/gau

# Waymore - wayback machine enumeration/recon
git clone https://github.com/xnl-h4ck3r/waymore /home/kali/tools/waymore

# APKLeaks - Grab paths and routes from a mobile app and use on web app to test for vulnerable API routes or paths
git clone https://github.com/dwisiswant0/apkleaks /home/kali/tools/apkleaks

# DNS Resolver IP List
git clone https://github.com/trickest/resolvers /home/kali/tools/trickest-resolvers

# AI Screenshot Scanning tool - use after eyewitness
git clone https://github.com/BishopFox/eyeballer /home/kali/tools/eyeballer

# OSINT on social media accounts
git clone https://github.com/piaolin/DetectDee /home/kali/tools/DetectDee


# WEB EXPLOIT TOOLS

# xsstrike tool download
git clone https://github.com/s0md3v/XSStrike /home/kali/tools/XSStrike

# MSOL Spray - o365 password spray
git clone https://github.com/dafthack/MSOLSpray /home/kali/tools/MSOLSpray

# dotdotpwn - for auto path traversal attacks
git clone https://github.com/wireghoul/dotdotpwn /home/kali/tools/dotdotpwn

# Automated SQLi Tool
git clone https://github.com/r0oth3x49/ghauri /home/kali/tools/ghauri

# SSRF common payloads - cloud metadata
wget https://gist.githubusercontent.com/jhaddix/78cece26c91c6263653f31ba453e273b/raw/a4869d58a5ce337d1465c2d1b29777b9eecd371f/cloud_metadata.txt -P /home/kali/tools

# XXE payload list
git clone https://github.com/payloadbox/xxe-injection-payload-list /home/kali/tools/xxe-injection-payload-list

# Phishing Tools
git clone https://github.com/fin3ss3g0d/evilgophish /home/kali/tools/evilgophish
git clone https://github.com/kgretzky/evilginx2 /home/kali/tools/evilginx2



# PRIVESC TOOLS
# PwnKit git clone
git clone https://github.com/ly4k/PwnKit /home/kali/server/PwnKit

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

# PrintNightmare Script
wget https://raw.githubusercontent.com/cube0x0/CVE-2021-1675/main/CVE-2021-1675.py -P /home/kali/scripts

# PrintSpoofer
wget https://github.com/itm4n/PrintSpoofer/releases/download/v1.0/PrintSpoofer32.exe -P /home/kali/server
wget https://github.com/itm4n/PrintSpoofer/releases/download/v1.0/PrintSpoofer64.exe -P /home/kali/server

# Mimikatz - old and new
wget https://github.com/ParrotSec/mimikatz/raw/master/x64/mimikatz.exe -P /home/kali/server
wget -O /home/kali/server/old_mimikatz_trunk.zip https://github.com/caday00/mimikatz2.1.1/raw/master/mimikatz_trunk.zip

# PEASS - Privesc Tools
wget https://github.com/carlospolop/PEASS-ng/releases/download/20231112-0a42c550/linpeas.sh -P /home/kali/server
wget https://github.com/carlospolop/PEASS-ng/releases/download/20231112-0a42c550/winPEAS.bat -P /home/kali/server
wget https://github.com/carlospolop/PEASS-ng/releases/download/20231112-0a42c550/winPEASany.exe -P /home/kali/server
wget https://github.com/carlospolop/PEASS-ng/releases/download/20231112-0a42c550/winPEASx64.exe -P /home/kali/server

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

# Rubeus - Repo but no binaries
git clone https://github.com/GhostPack/Rubeus.git /home/kali/server/Rubeus

# Rubeus - Binary download
wget https://github.com/Z333RO/security-tools-public/raw/main/odds_ends/Rubeus.exe -P /home/kali/server



# PIVOTING
# Chisel - Pivoting
wget https://github.com/jpillora/chisel/releases/download/v1.8.1/chisel_1.8.1_windows_amd64.gz -P /home/kali/server
wget https://github.com/jpillora/chisel/releases/download/v1.8.1/chisel_1.8.1_linux_amd64.gz -P /home/kali/server

# chisel binaries for windows and linux
wget https://github.com/jpillora/chisel/releases/download/v1.9.1/chisel_1.9.1_linux_amd64.gz -P /home/kali/server
wget https://github.com/jpillora/chisel/releases/download/v1.9.1/chisel_1.9.1_windows_amd64.gz -P /home/kali/server



# CRACKING
# AutoNTDS - dumps NTDS and cracks with hashcat 
git clone https://github.com/hmaverickadams/autoNTDS /home/kali/tools/autoNTDS



# EVASION
# powershell command obfuscator
git clone https://github.com/danielbohannon/Invoke-Obfuscation /home/kali/tools/Invoke-Obfuscation

# PowerLess Shell - a way to bypass powershell restrictions by executing powershell scripts without powershell
git clone https://github.com/Mr-Un1k0d3r/PowerLessShell /home/kali/tools/PowerLessShell


# Blue Team - Monitoring and Forensics
# NSA Cyber Tool for Monitoring and Forensics of ICS/SCADA environments
wget https://github.com/nsacyber/GRASSMARLIN/releases/download/v3.2.1/grassmarlin_3.2.1.kali-1_amd64.deb -P /home/kali/server

# Network Miner - Network Forensics Tool using pcap files (wireshark on roids)
# See the 2nd script for install of mono
wget https://www.netresec.com/?download=NetworkMiner -O /home/kali/tools/nm.zip
# Run the following commands to get this setup
# sudo apt install mono-devel 
# sudo unzip /home/kali/tools/nm.zip
# cd /home/kali/tools/NetworkMiner*
# sudo chmod +x NetworkMiner.exe
# sudo chmod -R go+w AssembledFiles/
# sudo chmod -R go+w Captures/
# mono NetworkMiner.exe --noupdatecheck 

# Squil - Snort Logs Analysis
wget https://github.com/bammv/sguil/releases/download/v0.9.0/sguil-client-0.9.0-osx.bin -O /home/kali/tools/sguil-client-0.9.0-osx.bin


# MISC

# Parse through dehashed data using its API
git clone https://github.com/hmaverickadams/DeHashed-API-Tool /home/kali/tools/DeHashed-API-Tool

# Project Management and Report Writing with Ghostwriter
git clone https://github.com/GhostManager/Ghostwriter.git /home/kali/tools/Ghostwriter

# Drone exploit framework similar to metasploit
git clone https://github.com/dhondta/dronesploit /home/kali/tools/dronesploit

# arsenal toolkit - cheat sheet
git clone https://github.com/Orange-Cyberdefense/arsenal /home/kali/tools/arsenal

# wordlist gen tool for URLs and paths
git clone https://github.com/ameenmaali/wordlistgen /home/kali/tools/wordlistgen

# Create alias for arsenal toolkit - type 'a' to run on zsh:
# alias a='arsenal'
echo "alias a='arsenal'" >> ~/.zshrc
