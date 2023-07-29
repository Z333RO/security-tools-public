#!/bin/bash

# Run sudo on this script

# Function to install packages with default "yes" answer
install_package() {
    apt-get install -y "$1"
}

apt-get update
apt-get upgrade 

install_package nuclei
install_package seclists
install_package gedit
install_package tor
install_package rlwrap
install_package bloodhound

dpkg -i /home/kali/tools/rustscan_2.0.1_amd64.deb

searchsploit -u
updatedb
