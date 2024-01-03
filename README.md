# security-tools-public

My public repository of hacking tools and scripts for use in web, network and cloud penetration testing engagements. Useful for scraping, enumeration, hash cracking and general living off the land scenarios if you can't install your usual pentesting tools on a machine. 

## Web Enumeration
1. website_spider.py - Recursively grabs links from a domain
2. directory_crawler.py - Directory busting/enumeration
3. subdomain_crawler.py - Subdomain enumeration
4. email_scraper.py - Email scraping tool for login brute forcing/dictionary attacks
5. form_data_extract.py - Useful for login brute forcing/dictionary attacks

## Network Enumeration
1. network_scanner.py - ARP Scanner to grab MAC addresses of devices in the network
2. packet_sniffer.py - Sniffs packets in a network for user credentials
3. portscanner.py - Simple port scanner

## Password Dictionary Attacks and Bruteforce
1. login_dictionary_attack.py - Dictionary attack with wordlist once you get a username
2. ssh_bruteforce.py - SSH Bruteforce Tool

## Network Man-In-The-Middle Attacks 
1. arp_spoof_detector.py - Detect MITM attacks in the network
2. arp_spoofer.py - ARP Spoofer for Network Man-In-The-Middle Attacks
3. dns_spoofer.py - DNS Spoofer for Network Man-In-The-Middle Attacks
4. packet_code_injection.py - Directs target user to your BeEF hook to add as zombie

## Cracking
1. hash_cracker.py - Simple hash cracker
2. jwt_devnull_traversal_bypass.rb - JWT dev null traversal bypass
3. jwt_kid_exploit.rb - JWT kid exploit
4. jwt_public_key_exploit.rb - JWT pulic key exploit
5. jwt_secret_bruteforce.rb - JWT secret bruteforce

## SQL Injection
1. simple_blind_SQLi.py - Simple blind SQL Injection Script

## Listeners and Backdoors
1. listener.py - Python listener if for some reason you can't run netcat or meterpreter listener
2. reverse_backdoor.py - Reverse "shell" if you can't run your payload on the target machine  

## Exploits
1. download_execute.py - When run by user, downloads and executes Lazagne.exe. Then sends printed data to your email.

## Automation 
1. kitchen_sink.py - Throw the kitchen sink at a target. Specify commands or scans to run at a target all at once. (Good for CTFs and exams)
2. ks_cli.py - Improved version of kitchen sink script, you just run the script and specify the target to get scanning. Then hit enter to check progress. (There is a bug when hitting enter, any commands that failed still pop up as pending - need to fix this later.)

## Kali Setup
1. kali_autosetup - Folder with 2 scripts for downloading my most commonly used tools and a setup script to install tools from Kali repo.

## Methodology
1. This folder contains methodologies for various engagement types as well as cheat sheets for common and useful commands I've used on CTFs and Penetration Tests

## Odds and Ends
Commonly used compiled binaries, tools or other useful scripts.
NOTE: DO NOT USE THESE BINARIES ON PRODUCTION SYSTEMS!! YOU HAVE BEEN WARNED!!
