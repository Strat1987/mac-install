echo "Verifying XCode"
echo "when following occurs, manually run xcode -> error: tool 'xcodebuild' requires Xcode, but active developer directory '/Library/Developer/CommandLineTools' is a command line tools instance"
echo
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
echo "Accepting the XCode Software License Agreement"
sudo xcodebuild -license accept
