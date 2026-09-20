echo

# add loginitems repo https://github.com/OJFord/loginitems
brew tap OJFord/formulae
brew trust --formula ojford/formulae/loginitems
brew install loginitems

echo "Configuring iTerm"
cp files/com.googlecode.iterm2.plist ~/Library/Preferences

echo "Configuring Franz"
loginitems -a "Franz" -p "/Applications/Franz.app/" # Start at login
open /Applications/Franz.app/

echo "Configuring Flux"
loginitems -a "Flux" -p "/Applications/Flux.app/" # Start at login
open /Applications/Flux.app/

echo "Configuring Beardie"
loginitems -a "Beardie" -p "/Applications/Beardie.app/" # Start at login
open /Applications/Beardie.app/

echo "Configuring SpotMenu"
loginitems -a "SpotMenu" -p "/Applications/SpotMenu.app/" # Start at login
open /Applications/SpotMenu.app/

echo "Configuring Google Drive"
loginitems -a "Google Drive" -p "/Applications/Google\ Drive.app/" # Start at login
open /Applications/Google\ Drive.app/

echo "Configuring CopyClip 2"
loginitems -a "CopyClip 2" -p "/Applications/CopyClip\ 2.app/" # Start at login
open /Applications/CopyClip\ 2.app/

#https://github.com/sindresorhus/quick-look-plugins
echo "Installing QuickLook extensions"
brew install qlstephen  # QLStephen is a QuickLook plugin to view plain text files without a file extension
brew install webpquicklook # WebP
brew install qlmarkdown # Renders a preview of a Markdown file
