#!/usr/bin/env bash

# Fail immediately if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;

MY_DIR="$(dirname "$0")"

clear

echo "Hello, "$USER".  This script will install your mac. It asks for your email address and phone number in order to customize the Git config and the lost&found message on the login screen"

echo "Reading config from credentials.cfg ...."
source ./credentials.cfg > /dev/null 2>&1

# Prompt for TST Credentials (in case they are not retrieved from the credentials_tst.cfg file)
if [[ -z "$fullname" ]]; then
    read -p "Enter your full name and press [ENTER]" fullname
fi
if [[ -z "$emailaddress" ]]; then
    read -s -p "Enter your e-mail address and press [ENTER] " emailaddress
fi
if [[ -z "$phonenumber" ]]; then
    read -s -p "Enter your phone number and press [ENTER] " phonenumber
fi

echo "fullname='$fullname'" > credentials.cfg
echo "emailaddress='$emailaddress'" >> credentials.cfg
echo "phonenumber='$phonenumber'" >> credentials.cfg

echo "Your full name: $fullname"
echo "Your e-mail address: $emailaddress"
echo "Your Phone number: $phonenumber"

echo
echo "Setting up machine..."

source ${MY_DIR}/xcode-license.sh

# Note: Homebrew needs to be set up first
source ${MY_DIR}/homebrew.sh
source ${MY_DIR}/configuration-osx.sh "$fullname" $emailaddress "$phonenumber"
source ${MY_DIR}/git.sh "$fullname" $emailaddress
source ${MY_DIR}/java.sh
source ${MY_DIR}/cli.sh
source ${MY_DIR}/applications.sh
source ${MY_DIR}/fonts.sh
source ${MY_DIR}/docker.sh
source ${MY_DIR}/general-dev.sh
source ${MY_DIR}/appstore.sh
source ${MY_DIR}/configurations.sh
source ${MY_DIR}/configuration-terminal.sh
source ${MY_DIR}/js.sh
source ${MY_DIR}/reload-terminal.sh
source ${MY_DIR}/finished.sh
