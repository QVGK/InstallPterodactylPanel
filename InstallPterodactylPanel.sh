#!/bin/bash

# Colour Variables
Color_Off='\033[0m'
Yellow='\033[0;33m'
Red='\033[0;31m'
Cyan='\033[0;36m'

# Root Check
if [ "$(id -u)" -ne 0 ]; then
        echo -e "${Red}This script is required to be ran with root permissions." >&2
        exit 1
fi

echo -e "${Cyan}Thanks for using this script. The script will proceed in 5 seconds. Press CTRL+C to cancel."
sleep 5

echo -e "${Yellow}Updating APT Dependencies"
sleep 1
apt update

echo -e "${Yellow}Upgrading APT Dependencies"
sleep 1
apt upgrade -y

echo -e "${Yellow}Initiating Pterodactyl Panel Install Script"
sleep 1
bash <(curl -s https://pterodactyl-installer.se/)