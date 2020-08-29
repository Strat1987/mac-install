echo
echo "Installing general development tools"

brew install htop
brew install md5sha1sum
brew install openssl
brew install openvpn

brew install python

brew cask install termius

# disk
brew install tree
brew install ncdu

# search
brew install ripgrep

# clipboard (paid)
brew cask install copyclip

# command line HTTP client
brew install httpie

# command line http benchmarking
brew install siege

# REST API testing tool
brew install jq
brew cask install postman
brew cask install insomnia

# Secure tunnels to localhost
brew cask install ngrok

# DB
brew cask install postgres # postgresql
brew install mariadb # mariadb
brew install sqlite # sqlite

## GUIs
brew cask install dbeaver-community # mysql (can connect to mysql in docker without password)
brew cask install mysqlworkbench # mysql UI
brew cask install dbvisualizer
brew cask install sequel-pro
brew cask install robo-3t # mongo
brew cask install db-browser-for-sqlite # sqlite
brew cask install postico # postgresql UI
brew cask install mysqlworkbench

#brew cask install dash

brew cask install graphiql

# Virtual

brew cask install virtualbox
brew cask install virtualbox-extension-pack

# Development Environment
brew cask install vagrant

# Servers

# Docker containers instead of locally installed servers
