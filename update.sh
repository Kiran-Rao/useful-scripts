# Firefox
update_firefox() {
    open -a "Firefox"
    osascript -e 'tell application "Firefox" to activate' \
              -e 'tell application "System Events" to tell process "Firefox" to click menu item "About Firefox" of menu "Firefox" of menu bar 1'
}

# Chrome
update_chrome() {
    open -a "Google Chrome" "chrome://settings/help"
}

# VS Code
update_vscode() {
    open -a "Visual Studio Code"
}

# App Store
update_app_store() {
    open "macappstore://showUpdatesPage"
}

# Spotify
update_spotify() {
    open -a "Spotify"
    osascript -e 'tell application "Spotify" to activate' \
              -e 'tell application "System Events" to tell process "Spotify" to click menu item "About Spotify" of menu "Spotify" of menu bar 1'
}

# VLC
update_vlc() {
    open -a "VLC"
    osascript -e 'tell application "VLC" to activate' \
              -e 'tell application "System Events" to tell process "VLC" to click menu item "Check for Update..." of menu "VLC" of menu bar 1'
}

# Signal
update_signal() {
    open -a "Signal"
}

# Word, Excel, Powerpoint 
update_microsoft() {
    open -a "Microsoft AutoUpdate"
}


update_homebrew() {
    brew update 
    brew upgrade
}

update_omz() {
    omz update
}


update_signal
update_firefox
update_chrome
update_vscode
update_vlc
update_microsoft
update_app_store
update_spotify
update_homebrew
update_omz