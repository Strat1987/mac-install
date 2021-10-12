echo
echo "Installing applications"

# Enable installation of cask drivers
brew tap homebrew/cask-drivers

# Utilities

brew install authy
brew install flux
brew install flycut
brew install spectacle # OR > brew install shiftit
brew install karabiner-elements # https://www.nadeau.tv/post/configure-hyper-key-osx/
brew install google-drive
brew install dropbox
brew install cheatsheet
brew install macpass
brew install keepassxc
brew install keeweb
brew install enpass
brew install bitwarden
brew install bettertouchtool
brew install go2shell
brew install the-unarchiver
brew install tunnelblick
brew install cyberduck
brew install mountain-duck
brew install mirrordisplays
brew install balenaetcher
brew install disk-inventory-x
brew install arq
brew install charles
brew install coconutbattery
brew install gas-mask # custom HOSTS files that can be dynamically switched
brew install beardedspice
brew install keybase # control Mac Media Keys
brew install vnc-viewer
brew install grandperspective
brew install calibre
brew install iina
brew install anki
brew install homebrew/cask-versions/microsoft-remote-desktop-beta
brew install libreoffice
brew install aerial

# Download client

brew install transmission

# Use `~/Documents/Torrents` to store incomplete downloads
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Documents/Torrents"

# Use `~/Downloads` to store completed downloads
defaults write org.m0k.transmission DownloadLocationConstant -bool true

# Don’t prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false
defaults write org.m0k.transmission MagnetOpenAsk -bool false

# Don’t prompt for confirmation before removing non-downloading active transfers
defaults write org.m0k.transmission CheckRemoveDownloading -bool true

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false
# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false

# IP block list. https://giuliomac.wordpress.com/2014/02/19/best-blocklist-for-transmission/
defaults write org.m0k.transmission BlocklistNew -bool true
defaults write org.m0k.transmission BlocklistURL -string "http://john.bitsurge.net/public/biglist.p2p.gz"
defaults write org.m0k.transmission BlocklistAutoUpdate -bool true

# Randomize port on launch
defaults write org.m0k.transmission RandomPort -bool true

# Terminals

brew install iterm2

# Browsers

brew install google-chrome
brew install firefox
brew install tor-browser
brew install brave-browser

brew tap caskroom/versions
brew install google-chrome-canary

brew install chromedriver

# Communication

brew install franz
brew install microsoft-teams
brew install slack
# brew install rambox
# brew install telegram
brew install skype

# (Text) Editors

brew install sublime-text
brew install atom
brew install brackets
brew install macvim
brew install xmind
brew install mactex

# Fonts
brew install fontconfig
brew install freetype
brew install skyfonts

# (Code) Editor(s) - IDE > Integrated development environment

brew install intellij-idea # Best Java editor out there (does require an active licence).
# brew install intellij-idea-ce # As an alternative you can install the free community edition
brew install eclipse-jee # The second most popular Java editor which is free is Eclipse eclipse-ide

brew install visual-studio-code # Code editor for front-end

# Set VS Code as default git diff tool over opendiff
if grep -Fxq "vscode" ~/.gitconfig > /dev/null
then
    echo "vscode is already configured as default GIT diff tool in your ~/.gitconfig"
else
    cat files/gitconfig-vscode-default-difftool >> ~/.gitconfig
fi

# BPMN Modeler
brew install camunda-modeler

# Markdown
brew install marked
brew install macdown
brew install abricotine

# Productivity
brew install notion

# i18n / translations
brew install deepl

# Graphics tools

brew install gimp
brew install skitch
brew install zeplin
brew install pencil

# Video

brew install handbrake
# Homebrew removed formula options as of Homebrew version 2.0
# so no more using the core ffmpeg formula
brew tap justinmayer/tap
brew install justinmayer/tap/ffmpeg --with-chromaprint --with-fdk-aac
# includes support WebM: ffmpeg -i video.mp4 -strict -2 video.webm
brew install kodi
brew install vlc
brew install youtube-dl

# Screen recorder

brew install kap

# Audio
brew install bose-soundtouch
brew install spotify
# Visualise spotify 'now playing' in menu bar https://kmikiy.github.io/SpotMenu/
brew install spotmenu
brew install focusrite-control # Audio interface Scarlett

# Other

brew install garmin-express
brew install kindle
brew install marshallofsound-google-play-music-player

# Gaming
brew install steam
brew install steelseries-engine
brew install discord
brew install twitch

# Useful scripts

brew install veracrypt
# VeraCrypt config: by default VeraCrypt will not alter the timestamp of the volume after it has been created
# This will prevent Cloud syncing from recognizing changes to the volume, and prevent synchronization
# So: 'uncheck' "Preserve modification timestamp of file containers"
# ### cp files/veracrypt-configuration.xml ~/"Library/Application Support/VeraCrypt/Configuration.xml"
# ditto (OSX-specific app) will create the directory structure that is missing in the destination
ditto files/veracrypt-configuration.xml ~/"Library/Application Support/VeraCrypt/Configuration.xml"

# Add the brew-cask-upgrade tool: allows to upgrade applications installed with homebrew cask
# homebrew only has support for 'brew cask outdated', not yet 'brew cask upgrade'
# See: https://github.com/buo/homebrew-cask-upgrade
# apps can be updated with 'brew cu app'
brew tap buo/cask-upgrade

# Security

brew install knockknock
brew install blockblock
