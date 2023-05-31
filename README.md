# security-tools-public

My public repository of security tools and scripts for use in web, network and cloud penetration testing engagements. Useful for scraping, enumeration, hash cracking and general living off the land scenarios if you can't install your usual pentesting tools on a machine. 

## Web Enumeration
website_spider_python3.py - Grabs links from a domain
directory_crawler_python2.py - Directory busting/enumeration
subdomain_crawler_python2.py - Subdomain enumeration
email_scraper.py - Email scraping tool for login brute forcing/dictionary attacks
form_data_extract_python2.py - Useful for login brute forcing/dictionary attacks
login_dictionary_attack_python2.py - Dictionary attack with wordlist once you get a username

## Network Enumeration
arp_spoof_detector.py - Detect MITM attacks in the network
network_scanner_python2.py - ARP Scanner to grab MAC addresses of devices in the network
packet_sniffer_python3.py - Sniffs packets in a network for user credentials
portscanner.py - Simple port scanner
ssh_bruteforce.py  - SSH Bruteforce Tool

## Cracking
hash_cracker.py - Simple hash cracker
jwt_devnull_traversal_bypass.rb - JWT dev null traversal bypass
jwt_kid_exploit.rb - JWT kid exploit
jwt_public_key_exploit.rb - JWT pulic key exploit
jwt_secret_bruteforce.rb - JWT secret bruteforce

## Listeners and Backdoors
listener_python2.py - Python listener if for some reason you can't run netcat or meterpreter listener
reverse_backdoor_python2.py - Reverse "shell" if you can't run your payload on the target machine  
