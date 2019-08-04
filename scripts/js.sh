echo
echo "Installing Javascript tools"
# Prefer zsh plugin over brew install to install Node https://github.com/nvm-sh/nvm
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

brew install yarn
