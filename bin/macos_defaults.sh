# Auto hide Dock
defaults write com.apple.dock autohide -int 1

# Yen key sends backslash
defaults write com.apple.inputmethod.Kotoeri JIMPrefCharacterForYenKey -int 1

# Modifier key mappings
keyboard_id=$(ioreg -c AppleEmbeddedKeyboard -r | grep -Ei "VendorID|ProductID|VendorIDSource" | awk '{print $4}' | paste -s -d'-\n' - | paste -s -d'-\n' -)
# CapsLock -> Control
defaults -currentHost write -g com.apple.keyboard.modifiermapping.${keyboard_id} -array-add '
<dict>
  <key>HIDKeyboardModifierMappingDst</key>
  <integer>30064771300</integer>
  <key>HIDKeyboardModifierMappingSrc</key>
  <integer>30064771129</integer>
</dict>'
# Option -> Command
defaults -currentHost write -g com.apple.keyboard.modifiermapping.${keyboard_id} -array-add '
<dict>
  <key>HIDKeyboardModifierMappingDst</key>
  <integer>30064771299</integer>
  <key>HIDKeyboardModifierMappingSrc</key>
  <integer>30064771302</integer>
</dict>'
defaults -currentHost write -g com.apple.keyboard.modifiermapping.${keyboard_id} -array-add '
<dict>
  <key>HIDKeyboardModifierMappingDst</key>
  <integer>30064771303</integer>
  <key>HIDKeyboardModifierMappingSrc</key>
  <integer>30064771298</integer>
</dict>'
# Command -> Option
defaults -currentHost write -g com.apple.keyboard.modifiermapping.${keyboard_id} -array-add '
<dict>
  <key>HIDKeyboardModifierMappingDst</key>
  <integer>30064771298</integer>
  <key>HIDKeyboardModifierMappingSrc</key>
  <integer>30064771303</integer>
</dict>'
defaults -currentHost write -g com.apple.keyboard.modifiermapping.${keyboard_id} -array-add '
<dict>
  <key>HIDKeyboardModifierMappingDst</key>
  <integer>30064771302</integer>
  <key>HIDKeyboardModifierMappingSrc</key>
  <integer>30064771299</integer>
</dict>'

# Enable right click
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode TwoButton

# Restart Dock
killall Dock
