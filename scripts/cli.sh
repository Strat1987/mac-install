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

brew tap confluentinc/tap
brew trust --formula confluentinc/tap/cli
brew install confluentinc/tap/cli

brew install kubernetes-cli

# Speed test CLI
brew install speedtest-go
