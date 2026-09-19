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

# Amazon Web Services
brew install awscli
brew install awsebcli

brew tap confluent/tap
brew trust --formula confluent/tap/cli
brew install --cask confluent/tap/cli

brew install kubernetes-cli

# Speed test CLI
brew install speedtest-go
