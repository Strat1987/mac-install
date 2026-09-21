# mac-install

My OS X on MacBook Pro install.
The purpose of this repository is to install a bunch of useful tools for developers following some best practices.
It heavily relies on brew as a package manager to make sure you can easily update those tools.

## Getting Started

- Currently tested against [Tahoe 26.6](https://www.apple.com/macos/)
    - These scripts might work on previous versions, down to [Sierra](http://www.apple.com/macos/sierra/), but are maintained with only the latest macOS in mind
- Install [Xcode 27](https://itunes.apple.com/us/app/xcode/id497799835?mt=12)


Open up the OS X Terminal and run the following commands:

```sh
mkdir -p ~/workspace
cd ~/workspace
git clone https://github.com/Strat1987/mac-install.git
cd mac-install
touch credentials.cfg
```

### Setup Machine

If you're setting up a machine run the following:

First run the automated machine setup using the shell script below

```sh
./setup-machine.sh
```

You can verify some OS X settings using the [manual installation instructions](files/Mac%20OS%20X%20Tahoe%20Install.pdf)

### Maintain Machine

Keeping the machine up to date:

```sh
./update-machine.sh
```

This will :  

- Install, update & upgrade applications using homebrew packages
- update macOS settings
- Set-up java using jenv
- update npm
- enhance zsh terminal

### Info

Originally based on Pivotal's setup scripts (https://github.com/pivotal/workstation-setup)  

Some `defaults` are commented out for the moment, due to Mojave's permissions. Adding Terminal/iTerm and bash to Full Disk Access allows to set `defaults` again, but it might be better to look up how to address the container directly...    
See also: https://github.com/mathiasbynens/dotfiles/issues/849

### Credits

Based on :  

- https://github.com/pakoito/dotfiles
- https://github.com/mathiasbynens/dotfiles
- https://github.com/holman/dotfiles
- https://github.com/albinekcom/updater-for-macos
- https://medium.com/@waxzce/keeping-macos-clean-this-is-my-osx-brew-update-cli-command-6c8f12dc1731
- https://github.com/herrbischoff/awesome-osx-command-line
- https://sourabhbajaj.com/mac-setup/iTerm/zsh.html
