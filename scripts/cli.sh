echo
echo "Installing CLIs"

# wget
brew install wget

brew install autojump

# Google Cloud SDK
brew install google-cloud-sdk

# Heroku CLI
brew tap heroku/brew
brew trust --formula heroku/brew/heroku
brew install heroku
# Firebase Command Line Interface
#npm -g install firebase-tools

# Amazon Web Services
brew install awscli
brew install awsebcli

brew tap confluent/tap/cli
brew trust --formula confluent/tap/cli/confluent-cli
brew install --cask confluent-cli

brew install kubernetes-cli

# Speed test CLI
brew install speedtest-cli
