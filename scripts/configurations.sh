echo
# prereqs

# OS X Sierra prevents changes to TCC.db, so only enable tccutil when SIP is disabled
#brew install tccutil

# add loginitems repo https://github.com/OJFord/loginitems
brew tap OJFord/formulae
brew install loginitems

echo "Configuring iTerm"
cp files/com.googlecode.iterm2.plist ~/Library/Preferences

echo "Configuring ShiftIt"
#sudo tccutil --insert "com.divisiblebyzero.Spectacle" # Enable Accessibility Settings
loginitems -a "ShiftIt" -p "/Applications/ShiftIt.app/" # Start at login
open /Applications/ShiftIt.app

echo "Configuring Amphetamine"
loginitems -a "Amphetamine" -p "/Applications/Amphetamine.app/" # Start at login
open /Applications/Amphetamine.app/

echo "Configuring Franz"
loginitems -a "Franz" -p "/Applications/Franz.app/" # Start at login
open /Applications/Franz.app/

echo "Configuring Flux"
loginitems -a "Flux" -p "/Applications/Flux.app/" # Start at login
open /Applications/Flux.app/

echo "Configuring BeardedSpice"
loginitems -a "BeardedSpice" -p "/Applications/BeardedSpice.app/" # Start at login
open /Applications/Flux.app/

echo "Configuring SpotMenu"
loginitems -a "SpotMenu" -p "/Applications/SpotMenu.app/" # Start at login
open /Applications/Flux.app/

echo "Configuring Google Drive"
loginitems -a "Google Drive" -p "/Applications/Google\ Drive.app/" # Start at login
open /Applications/Google\ Drive.app/

echo "Configuring CopyClip 2"
loginitems -a "CopyClip 2" -p "/Applications/CopyClip\ 2.app/" # Start at login
open /Applications/CopyClip\ 2.app/

echo "Configuring CheatSheet"
loginitems -a "CheatSheet" -p "/Applications/CheatSheet.app/" # Start at login
open /Applications/Flux.app/

#https://github.com/sindresorhus/quick-look-plugins
echo "Installing QuickLook extensions"
brew install qlstephen  # QLStephen is a QuickLook plugin to view plain text files without a file extension
#brew install webpquicklook # WebP
brew install quicklookapk # Preview Android APK files
brew install qlcolorcode # Renders source code with syntax highlighting
brew install qlmarkdown # Renders a preview of a Markdown file
brew install quicklook-json # Renders a preview of a Json file
