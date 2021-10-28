echo
echo "Installing applications"

# Enable installation of cask drivers
brew tap homebrew/cask-drivers

# Utilities
brew install authy
brew install bettertouchtool #paid
brew install cheatsheet
brew install flux
brew install karabiner-elements # https://www.nadeau.tv/post/configure-hyper-key-osx/
brew install shiftit
brew install the-unarchiver

# File sharing
brew install google-drive
brew install dropbox
brew install arq # backup tool

# password management
brew install lastpass
brew install macpass
brew install keepassxc
brew install keeweb
brew install enpass
brew install bitwarden

# brew install go2shell # replaced by https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/osx
brew install tunnelblick # vpn
brew install cyberduck # s3 + ftp client
brew install mountain-duck # paid
brew install mirrordisplays
brew install balenaetcher # flash OS image to Drive

# Disk management
brew install disk-inventory-x
brew install grandperspective

brew install coconutbattery # Battery check
brew install gas-mask # custom HOSTS files that can be dynamically switched
brew install keybase # control Mac Media Keys
brew install calibre # e-book app
brew install libreoffice
brew install aerial # screensaver

# Remote desktop
brew install vnc-viewer
brew install homebrew/cask-versions/microsoft-remote-desktop-beta

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
brew install iina
brew install vlc
brew install kodi
brew install youtube-dl

# Screen recorder
brew install kap

# Audio
brew install beardedspice
brew install spotify
# Visualise spotify 'now playing' in menu bar https://kmikiy.github.io/SpotMenu/
brew install spotmenu
brew install bose-soundtouch
brew install focusrite-control # Audio interface Scarlett
brew install marshallofsound-google-play-music-player

# Other
brew install garmin-express
brew install kindle

# Gaming
brew install steam
brew install steelseries-engine
brew install discord
brew install twitch

# Encryption
brew install veracrypt
# VeraCrypt config: by default VeraCrypt will not alter the timestamp of the volume after it has been created
# This will prevent Cloud syncing from recognizing changes to the volume, and prevent synchronization
# So: 'uncheck' "Preserve modification timestamp of file containers"
# ### cp files/veracrypt-configuration.xml ~/"Library/Application Support/VeraCrypt/Configuration.xml"
# ditto (OSX-specific app) will create the directory structure that is missing in the destination
ditto files/veracrypt-configuration.xml ~/"Library/Application Support/VeraCrypt/Configuration.xml"
# or enable System Preferences > Security & privacy > FileVault

# Security
brew install knockknock
brew install blockblock
