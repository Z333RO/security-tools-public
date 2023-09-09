#!/usr/bin/env python
# Python3 Website Spider Script
# Recursively grab URL links from a domain.

import requests
import re
import urllib.parse as urlparse


target_url = "http://192.0.0.2/mutillidae/" # CHANGE THIS
target_links = []

def extract_links_from(url):
    response = requests.get(url)
    return re.findall('(?:href=")(.*?)"', response.content.decode(errors="decode"))

def crawl(url):
    href_links = extract_links_from(url)
    for link in href_links:
        link = urlparse.urljoin(url, link)

        if "#" in link:
            link = link.split("#")[0]

        if target_url in link and link not in target_links:
            target_links.append(link)
            print(link)
            crawl(link)

crawl(target_url)
