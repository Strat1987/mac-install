echo
echo "Installing Java Development tools"
brew cask install java  # install latest Java version
brew install maven      # Leading Java build tool
brew install gradle     # Alternative Java build tool
brew install groovysdk  # Install groovy

brew tap pivotal/tap
brew install springboot # Install Spring boot

brew tap AdoptOpenJDK/openjdk # add openjdk tap
echo
echo "Installing Java 8"
brew cask install adoptopenjdk8   # install most commonly production used Java version

echo "Installing Java 11"
brew cask install adoptopenjdk11   # install latest LTS Java version

echo
echo "Installing jenv to support multiple Java versions"
brew install jenv # Support multiple Java versions (https://www.jenv.be/)

echo 'export PATH="$HOME/.jenv/bin:$PATH"' >>~/.bashrc
echo 'eval "$(jenv init -)"' >>~/.bashrc

# - reload bash dotifiles
currentDir=${pwd}
cd ~
. .bash_profile
. .bashrc
cd $currentDir

for jdk in /Library/Java/JavaVirtualMachines/*/; do
  if [[ -d $jdk ]]; then
    jenv add ${jdk}Contents/Home
    ## ERROR : needed to	- customize the PATH export to include brew paths
    ### path export export PATH="$HOME/.jenv/bin:$HOME/bin:/usr/local/bin:$PATH"
  fi
done

# Set Java 8 as default
jenv global 1.8

jenv doctor

# - reload bash dotifiles to be able to enable jenv plugins
currentDir=${pwd}
cd ~
. .bash_profile
. .bashrc
cd $currentDir

# Force jenv to update JAVA_HOME
jenv enable-plugin export

# link jenv with maven
jenv enable-plugin maven

jenv doctor
