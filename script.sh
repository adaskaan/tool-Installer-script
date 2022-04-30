#!/bin/bash


RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "\n${RED}### Updating packages ###${NC}\n"

#Update package list
apt update 

echo -e "\n${RED}### Starting to install ###${NC}\n"

#Install gobuster
apt-get install gobuster -y 

sleep 0.5

echo -e "\n${RED}Installing next package...${NC}\n"

#Install seclists for additional wordlists
apt-get install seclists -y 

sleep 0.5

echo -e "\n${RED}Installing next package...${NC}\n"

#Install wifiphisher
apt-get install wifiphisher -y 

sleep 0.5

echo -e "\n${RED}Installing next package...${NC}\n"

#Install macchanger
apt-get install macchanger -y 

sleep 0.5

#Auto remove unneccessary packages
echo -e "\n${RED}Auto removing unneccessary packages${NC}\n"

apt autoremove

echo -e "\n${RED}### Done ###${NC}\n"


