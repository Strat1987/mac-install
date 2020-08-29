echo
echo "Installing Javascript tools"
# Prefer zsh plugin over brew install to install Node https://github.com/nvm-sh/nvm
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
# TODO check if using antigen https://antigen.sharats.me/ is a better approach for loading zsh plugins
brew install yarn
