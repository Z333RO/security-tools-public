# security-tools-public

My public repository of security tools and scripts for use in web, network and cloud penetration testing engagements. Useful for scraping, enumeration, hash cracking and general living off the land scenarios if you can't install your usual pentesting tools on a machine. 

## Web Enumeration
1. website_spider_python3.py - Grabs links from a domain
2. directory_crawler_python2.py - Directory busting/enumeration
3. subdomain_crawler_python2.py - Subdomain enumeration
4. email_scraper.py - Email scraping tool for login brute forcing/dictionary attacks
5. form_data_extract_python2.py - Useful for login brute forcing/dictionary attacks
6. login_dictionary_attack_python2.py - Dictionary attack with wordlist once you get a username

## Network Enumeration
1. arp_spoof_detector.py - Detect MITM attacks in the network
2. network_scanner_python2.py - ARP Scanner to grab MAC addresses of devices in the network
3. packet_sniffer_python3.py - Sniffs packets in a network for user credentials
4. portscanner.py - Simple port scanner
5. ssh_bruteforce.py  - SSH Bruteforce Tool

## Cracking
1. hash_cracker.py - Simple hash cracker
2. jwt_devnull_traversal_bypass.rb - JWT dev null traversal bypass
3. jwt_kid_exploit.rb - JWT kid exploit
4. jwt_public_key_exploit.rb - JWT pulic key exploit
5. jwt_secret_bruteforce.rb - JWT secret bruteforce

## Listeners and Backdoors
1. listener_python2.py - Python listener if for some reason you can't run netcat or meterpreter listener
2. reverse_backdoor_python2.py - Reverse "shell" if you can't run your payload on the target machine  
