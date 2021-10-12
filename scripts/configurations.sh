echo
# prereqs

# OS X Sierra prevents changes to TCC.db, so only enable tccutil when SIP is disabled
#brew install tccutil
# add loginitems repo https://github.com/OJFord/loginitems
brew tap OJFord/formulae
brew install loginitems

echo "Configuring iTerm"
cp files/com.googlecode.iterm2.plist ~/Library/Preferences

echo "Configuring Spectacle"
#sudo tccutil --insert "com.divisiblebyzero.Spectacle" # Enable Accessibility Settings
loginitems -a "Spectacle" -p "/Applications/Spectacle.app" # Start on login
open /Applications/Spectacle.app
echo "Installing Spectacle shortcuts"
#cp files/Shortcuts.json ~/"Library/Application Support/Spectacle/Shortcuts.json"
ditto files/Shortcuts.json ~/"Library/Application Support/Spectacle/Shortcuts.json"

echo "Configuring FlyCut"
loginitems -a "Flycut" -p "/Applications/Flycut.app" # Start at login
open /Applications/Flycut.app

echo "Installing QuickLook extensions"
brew install qlstephen  # QLStephen is a QuickLook plugin to view plain text files without a file extension
#brew install webpquicklook # WebP
brew install quicklookapk # Preview Android APK files
brew install qlcolorcode # Renders source code with syntax highlighting
brew install qlmarkdown # Renders a preview of a Markdown file
brew install quicklook-json # Renders a preview of a Json file
