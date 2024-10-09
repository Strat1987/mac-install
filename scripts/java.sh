echo
echo "Installing Java Development tools"

echo

echo "Installing Java 17"
brew install temurin   # install latest LTS Java
echo "Installing Java 11"
brew install temurin11   # install previous LTS Java version
echo "Installing Java 8"
brew install temurin8   # install older LTS Java version

echo
echo "Installing jenv to support multiple Java versions"
brew install jenv # Support multiple Java versions (https://www.jenv.be/)

if grep -F "jenv" ~/.bashrc > /dev/null
then
    echo "Jenv is already added to bashrc"
else
  echo 'export PATH="$HOME/.jenv/bin:$PATH"' >>~/.bashrc
  echo 'eval "$(jenv init -)"' >>~/.bashrc
fi

# - reload bash dotifiles to be able to enable jenv plugins and add java versions
currentDir=${pwd}
cd ~
. .bash_profile
. .bashrc
cd $currentDir

jenv doctor

# Force jenv to update JAVA_HOME
jenv enable-plugin export

brew install jbangdev/tap/jbang
brew install maven      # Leading Java build tool
brew install gradle     # Alternative Java build tool

# link jenv with maven
jenv enable-plugin maven

for jdk in /Library/Java/JavaVirtualMachines/*/; do
  if [[ -d $jdk ]]; then
    jenv add ${jdk}Contents/Home
    ## ERROR : needed to	- customize the PATH export to include brew paths
    ### path export export PATH="$HOME/.jenv/bin:$HOME/bin:/usr/local/bin:$PATH"
  fi
done

# Set Java 11 as default
jenv global 11

jenv doctor

brew install visualvm # VisualVM

brew install groovysdk  # Install groovy

brew tap pivotal/tap
brew install springboot # Install Spring boot
