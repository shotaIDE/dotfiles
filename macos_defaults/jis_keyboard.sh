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
