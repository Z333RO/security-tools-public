#this script allows the user to read a list of urls ie a list created by katana crawler - and downloads those urls/files via wget and places them into a downloaded_content folder.

import subprocess
import os
 
# Function to create a folder for each subdomain/domain and download the content
def download_urls_from_wordlist(wordlist_file):
    with open(wordlist_file, 'r') as file:
        lines = file.read().splitlines()
 
    for url in lines:
        # Use 'wget' to download the URL
        cmd = ['wget', '-r', '-np', '-P', get_folder_name(url), url]
 
        try:
            subprocess.run(cmd, check=True)
            print(f"Downloaded: {url}")
        except subprocess.CalledProcessError as e:
            print(f"Failed to download: {url}")
            print(f"Error: {e}")
 
# Function to extract the subdomain/domain and create a folder name
def get_folder_name(url):
    # Remove the protocol (http/https) if it exists
    url = url.replace('http://', '').replace('https://', '')
    # Get the domain/subdomain from the URL
    parts = url.split('/')
    if len(parts) > 1:
        folder_name = parts[0]
    else:
        folder_name = url
 
    # Create a folder using the domain/subdomain as the name
    folder_path = os.path.join('downloaded_content', folder_name)
 
    if not os.path.exists(folder_path):
        os.makedirs(folder_path)
 
    return folder_path
 
def main():
    wordlist_file = 'wordlist.txt'  # Replace with the path to your wordlist file
    download_urls_from_wordlist(wordlist_file)
 
if __name__ == '__main__':
    main()
