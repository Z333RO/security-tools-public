#!/bin/bash

# Run sudo on this script

# Function to install packages with default "yes" answer
install_package() {
    apt-get install -y "$1"
}

apt-get update -y
apt-get upgrade -y

install_package nuclei
install_package seclists
install_package gedit
install_package tor
install_package rlwrap
install_package eyewitness
install_package bloodhound

dpkg -i /home/kali/tools/rustscan_2.0.1_amd64.deb

searchsploit -u

# windows-exploit-suggester setup and dependencies install - install pip2 on kali machine
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
python2 get-pip.py
rm get-pip.py
pip2 install xlrd==1.2.0
# Go into the windows exploit suggester folder and run the following to setup exploit-suggester
# python2 windows-exploit-suggester.py --update

updatedb
