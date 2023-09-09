#!/usr/bin/env python
# This script requests a specific URL, parses the HTML content, and extracts all the form elements from it. It can be used to analyze the structure and details of forms present on a webpage.
# Can be used with login_dictionary_attack.py script after getting form data

import requests
from bs4 import BeautifulSoup


def request(url):
    try:
        return requests.get("http://" + url)
    except requests.exceptions.ConnectionError:
        pass

target_url = "192.0.0.17/mutillidae/index.php?page=login.php"
response = request(target_url)

parsed_html = BeautifulSoup(response.content)
forms_list = parsed_html.findaAll("form")
print(forms_list)
