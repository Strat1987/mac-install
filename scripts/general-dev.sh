echo
echo "Installing general development tools"

brew install htop
brew install md5sha1sum
brew install openssl
brew install openvpn
brew install python

brew cask install termius

# command line HTTP client
brew install httpie

# command line http benchmarking
brew install siege

# REST API testing tool
brew cask install postman
brew cask install insomnia

# Secure tunnels to localhost
brew cask install ngrok

# DB
brew cask install postgres # postgresql
brew install mariadb # mariadb
brew install sqlite # sqlite

## GUIs
brew cask install sequel-pro # mysql (can't connect to mysql in docker without password)
brew cask install dbeaver-community # mysql (can connect to mysql in docker without password)
brew cask install robo-3t # mongo
brew cask install db-browser-for-sqlite # sqlite
brew cask install postico # postgresql UI

#brew cask install dash

brew cask install graphiql

# Virtual

brew cask install virtualbox
brew cask install virtualbox-extension-pack

# Development Environment
brew cask install vagrant

# Servers

# Docker containers instead of locally installed servers
