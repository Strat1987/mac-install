echo

if hash brew 2>/dev/null; then
  echo "Homebrew is already installed!"
else
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo
  echo "Ensuring your Homebrew directory is writable..."
  sudo chown -R $(whoami) /usr/local/bin

  echo
  echo "Adding Homebrew's sbin to your PATH..."

  if grep -F "/usr/local/sbin" ~/.bashrc > /dev/null
  then
      echo "homebrew is already added to bashrc file"
  else
    echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bashrc
  fi
  if grep -F "bashrc" ~/.bash_profile > /dev/null
  then
      echo "bashrc is already sourced in bash_profile"
  else
    echo "if [ -f ~/.bashrc ]; then source ~/.bashrc fi" >> ~/.bash_profile
  fi

  currentDir=${pwd}
  cd ~
  . .bash_profile
  . .bashrc
  cd $currentDir

  echo
  echo "Installing Homebrew services..."
  brew tap homebrew/services

fi

echo
echo "Ensuring you have a healthy Homebrew environment..."
brew doctor

echo
echo "Ensuring you have the latest Homebrew..."
brew update

echo
echo "Upgrading existing brews..."
brew upgrade

echo "Cleaning up your Homebrew installation..."
brew cleanup

echo
echo "Ensuring your Homebrew environment is still healthy..."
brew doctor
