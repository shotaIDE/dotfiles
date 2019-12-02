# Yen key sends backslash
defaults write com.apple.inputmethod.Kotoeri JIMPrefCharacterForYenKey -int 1

# Dock
defaults write com.apple.dock autohide -int 1
defaults write com.apple.dock show-recents -int 0

killall Dock

# Show dot files in Finder
defaults write com.apple.finder AppleShowAllFiles -int 1

# Don't make .DS_Store file on network
defaults write com.apple.desktopservices DSDontWriteNetworkStores -int 1

# Restart Finder
killall Finder

# Display date
defaults write com.apple.menuextra.clock 'DateFormat' -string "M\\U6708d\\U65e5(EEE)  H:mm"

# Show the battery percentage
defaults write com.apple.menuextra.battery ShowPercent -int 1

# Disable screen shot shadow
defaults write com.apple.screencapture disable-shadow -int 1

# Restart system ui server
killall SystemUIServer

# XCode
defaults write com.apple.dt.Xcode DVTTextShowInvisibleCharacters -int 1
