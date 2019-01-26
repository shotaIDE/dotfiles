# Yen key sends backslash
defaults write com.apple.inputmethod.Kotoeri JIMPrefCharacterForYenKey -int 1

# Auto hide Dock
defaults write com.apple.dock autohide -int 1

# Restart Dock
killall Dock

# Show dot files in Finder
defaults write com.apple.finder AppleShowAllFiles -int 1

# Restart Finder
killall Finder
