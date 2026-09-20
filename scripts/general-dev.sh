echo
echo "Installing general development tools"

brew install htop
brew install coreutils

brew install openssl
brew install openvpn

brew install python

brew install termius

# disk
brew install tree
brew install ncdu

# search
brew install ripgrep

# clipboard (paid)
brew install copyclip # or free brew install flycut

# command line HTTP client
brew install httpie
brew install charles # HTTP Proxy

# command line http benchmarking
brew install siege

# REST API testing tool
brew install jq
brew install postman
brew install insomnia

# Secure tunnels to localhost
brew install ngrok

# DB
brew install postgres # postgresql
brew install mariadb # mariadb
brew install sqlite # sqlite

## GUIs
brew install dbeaver-community # mysql (can connect to mysql in docker without password)
brew install mysqlworkbench # mysql UI
brew install dbvisualizer
brew install sequel-ace
brew install studio-3t-community # mongo
brew install db-browser-for-sqlite # sqlite
brew install postico # postgresql UI
brew install mysqlworkbench
brew install dash # documentation

# Virtual
brew install virtualbox
echo "#### install virtualbox-extension-packOracle VirtualBox Downloads. ####"
echo "Zorg dat de versie exact overeenkomt met je geïnstalleerde VirtualBox-versie."
echo "!!!! Open VirtualBox.Ga naar File > Tools > Extension Pack Manager (of Preferences > Extensions)."
echo "Klik op het Install-icoon (het plusje), selecteer het gedownloade .vbox-extpack-bestand en bevestig de licentie. !!!!"

# Development Environment
brew install vagrant

# Acceptance testing
brew install gauge
