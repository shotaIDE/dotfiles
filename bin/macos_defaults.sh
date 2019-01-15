# Auto hide Dock
defaults write com.apple.dock autohide -int 1

# Yen key sends backslash
defaults write com.apple.inputmethod.Kotoeri JIMPrefCharacterForYenKey -int 1

# Enable right click
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode TwoButton

# Restart Dock
killall Dock
