#!/usr/bin/env bash

##################################################################################################################
### SOURCES ######################################################################################################
### https://macos-defaults.com/misc/nsquitalwayskeepwindows.html
### https://lupin3000.github.io/macOS/defaults
### https://github.com/webpro/dotfiles/blob/main/macos/defaults.sh
### https://gist.github.com/kamui545/c810eccf6281b33a53e094484247f5e8
###
### To read current values of an options: ex. "defaults read com.apple.dock"
###
##################################################################################################################

##################################################################################################################
### SOURCING, CONSTANTS & SCRIPT PREPARATION #####################################################################
##################################################################################################################

source "./dock_functions.sh"

COMPUTER_NAME="DBM3MRPX"
LANGUAGES=(en en_gb pl)
LOCALE="en_GB@currency=GBP"
MEASUREMENT_UNITS="Centimeters"
SCREENSHOTS_FOLDER="${HOME}/Screenshots"

osascript -e 'tell application "System Preferences" to quit' &&

  # Ask for the administrator password upfront
  sudo -v &&

  # Keep-alive: update existing `sudo` time stamp until this script has finished
  while true; do
    sudo -n true
    sleep 60
    kill -0 "$$" || exit
  done 2>/dev/null &

##################################################################################################################
### COMPUTER & HOST NAME #########################################################################################
##################################################################################################################

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "$COMPUTER_NAME" &&
  sudo scutil --set HostName "$COMPUTER_NAME" &&
  sudo scutil --set LocalHostName "$COMPUTER_NAME" &&
  sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$COMPUTER_NAME" &&

  ##################################################################################################################

  ### LOCALIZATION #################################################################################################
  ##################################################################################################################

  # Set language and text formats
  defaults write NSGlobalDomain AppleLanguages -array ${LANGUAGES[@]} &&
  defaults write NSGlobalDomain AppleLocale -string "$LOCALE" &&
  defaults write NSGlobalDomain AppleMeasurementUnits -string "$MEASUREMENT_UNITS" &&
  defaults write NSGlobalDomain AppleMetricUnits -bool true &&

  # Using systemsetup might give Error:-99, can be ignored (commands still work)
  # systemsetup manpage: https://ss64.com/osx/systemsetup.html

  # Set the time zone
  sudo defaults write /Library/Preferences/com.apple.timezone.auto Active -bool true &&
  sudo systemsetup -setusingnetworktime on &&

  ##################################################################################################################
  ### SYSTEM #######################################################################################################
  ##################################################################################################################

  # Restart automatically if the computer freezes (Error:-99 can be ignored)
  sudo systemsetup -setrestartfreeze on 2>/dev/null &&

  # Set standby delay to 24 hours (default is 1 hour)
  sudo pmset -a standbydelay 86400 &&

  # Disable Sudden Motion Sensor
  sudo pmset -a sms 0 &&

  # Disable audio feedback when volume is changed
  defaults write com.apple.sound.beep.feedback -bool false &&

  # Disable the sound effects on boot
  sudo nvram SystemAudioVolume=" " &&
  sudo nvram StartupMute=%01 &&

  # Menu bar: show battery percentage
  defaults write com.apple.menuextra.battery ShowPercent -bool true &&

  # Disable opening and closing window animations
  defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false &&

  # Increase window resize speed for Cocoa applications
  defaults write NSGlobalDomain NSWindowResizeTime -float 0.001 &&

  # Expand save panel by default
  defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true &&
  defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true &&

  # Expand print panel by default
  defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true &&
  defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true &&

  # Save to disk (not to iCloud) by default
  defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false &&

  # Automatically quit printer app once the print jobs complete
  defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true &&

  # Disable the “Are you sure you want to open this application?” dialog
  defaults write com.apple.LaunchServices LSQuarantine -bool false &&

  # Disable Resume system-wide
  # defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false &&

  # Disable the crash reporter
  defaults write com.apple.CrashReporter DialogType -string "none" &&

  # Disable Notification Center and remove the menu bar icon
  launchctl load -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2>/dev/null &&

  # Enable subpixel font rendering on non-Apple LCDs
  defaults write NSGlobalDomain AppleFontSmoothing -int 2 &&

  ##################################################################################################################
  ### DOCK #########################################################################################################
  ##################################################################################################################

  # Position (default "bottom")
  defaults write com.apple.dock "orientation" -string "left" &&

  # Icon size (default "48")
  defaults write com.apple.dock "tilesize" -int "28" &&

  # Icon size when magnified (default "58")
  defaults write com.apple.dock "largesize" -int "56" &&

  # Magnification (default false)
  defaults write com.apple.dock "magnification" -bool true &&

  # Autohide (default false)
  defaults write com.apple.dock "autohide" -bool true &&

  # Autohide animation tile (default "0.5")
  defaults write com.apple.dock "autohide-time-modifier" -float "0.5" &&

  # Autohide delay (default "0.2")
  defaults write com.apple.dock "autohide-delay" -float "0.2" &&

  # Show recent (default true)
  defaults write com.apple.dock "show-recents" -bool false &&

  # Show indicator lights for open applications in the Dock
  defaults write com.apple.dock show-process-indicators -bool true &&

  # Don’t animate opening applications from the Dock
  defaults write com.apple.dock launchanim -bool false &&

  # Minimizewindows into the application icon
  defaults write com.apple.dock minimize-to-application -bool true &&

  # Enable automatic rearrange spaces based on most recent use
  defaults write com.apple.dock mru-spaces -bool false &&

  # Make Dock icons of hidden applications translucent
  defaults write com.apple.dock showhidden -bool true &&

  # No bouncing icons
  defaults write com.apple.dock no-bouncing -bool true &&

  # Disable hot corners
  defaults write com.apple.dock wvous-tl-corner -int 0 &&
  defaults write com.apple.dock wvous-tr-corner -int 0 &&
  defaults write com.apple.dock wvous-bl-corner -int 0 &&
  defaults write com.apple.dock wvous-br-corner -int 0 &&

  # Declare dock apps
  declare -a apps=(
    '/System/Applications/Launchpad.app'
    '/Applications/WezTerm.app'
    '/Applications/PhpStorm.app'
    '/System/Applications/System Settings.app'
  )

# Declare dock folders
declare -a folders=(
  ~/Downloads
  /Volumes/Docs
  /Volumes/Work
)

clear_dock
disable_recent_apps_from_dock

for app in "${apps[@]}"; do
  add_app_to_dock "$app"
done

for folder in "${folders[@]}"; do
  add_folder_to_dock $folder
done

##################################################################################################################
### SAFARI #######################################################################################################
##################################################################################################################

# Show full URL (default false)
defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool true &&

  # Include the Develop menu
  defaults write com.apple.Safari IncludeDevelopMenu -bool true &&

  # Include the Internal Debug menu.
  defaults write com.apple.Safari IncludeInternalDebugMenu -bool true &&

  # Enable WebKit Developer Extras preference key
  defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true &&

  # Enable WebKit Developer Extras
  defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true &&

  # Disable universal search because we prefer privacy
  defaults write com.apple.Safari UniversalSearchEnabled -bool false &&

  # Suppress search suggestions because we prefer privacy
  defaults write com.apple.Safari SuppressSearchSuggestions -bool true &&

  # Don't open "safe" downloads i.e. don't open files automatically after downloading
  defaults write com.apple.Safari AutoOpenSafeDownloads -bool false &&

  # Disable snapshots i.e. don't use thumbnail cache for History and Top Sites
  defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2 &&

  ##################################################################################################################
  ### FINDER #######################################################################################################
  ##################################################################################################################

  # Show extensions (default false)
  defaults write NSGlobalDomain "AppleShowAllExtensions" -bool true &&

  # Show hidden files (default false)
  defaults write com.apple.finder "AppleShowAllFiles" -bool true &&

  # Show path bar (default false)
  defaults write com.apple.finder "ShowPathbar" -bool true &&

  # Show status bar
  defaults write com.apple.finder ShowStatusBar -bool true &&

  # Default view style (default icons "icnv", options: columns "clmv", gallery "glyv", list "Nlsv")
  defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv" &&

  # Keep folders on top (default false)
  defaults write com.apple.finder "_FXSortFoldersFirst" -bool true &&

  # Open folder destination - context menu (default true, true - tab, false - window)
  defaults write com.apple.finder "FinderSpawnTab" -bool false &&

  # Default search scope (default "SCev" (default value), options: "SCcf" (current folder), "SCev" (this mac), "SCsp" (previous search scope))
  defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf" &&

  # Changing file extension warning (default true)
  defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool false &&

  # Sidebar icon size (default "2", options "1" (small), "2" (medium), "3" (large))
  defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int 2 &&

  # Remove tags from sidebar
  defaults write com.apple.finder "ShowRecentTags" -bool false &&

  # Remove iCloud from sidebar
  defaults write com.apple.finder "SidebarShowingSignedIntoiCloud" -bool false &&
  defaults write com.apple.finder "SidebarShowingiCloudDesktop" -bool false &&

  # Set new window target to home
  defaults write com.apple.finder "NewWindowTarget" -string "Home" &&

  # Keep folders on top (default false)
  defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool true &&

  # Show disks (default false)
  defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool true &&

  # Show external disks (default true)
  defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool true &&

  # Show removable media (default true)
  defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool false &&

  # Show connected servers (default false)
  defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool false &&

  ##################################################################################################################
  ### MENU BAR #####################################################################################################
  ##################################################################################################################

  # Flasing clock indicator
  defaults write menuExtraClock FlashDateSeparators -bool false &&

  # Enable analog clock
  defaults write menuExtraClock IsAnalog -bool false &&

  # Show 24-hour clock
  defaults write menuExtraClock Show24Hour -bool false &&

  # Show am/pm
  defaults write menuExtraClock ShowAMPM -bool true &&

  # Show date (options: 0 = When space allows 1 = Always 2 = Never)
  defaults write menuExtraClock ShowDate -int 2 &&

  # Show day of the month
  defaults write menuExtraClock ShowDayOfMonth -bool false &&

  # Show day of the week
  defaults write menuExtraClock ShowDayOfWeek -bool true &&

  # Show seconds
  defaults write menuExtraClock ShowSeconds -bool false &&

  ##################################################################################################################
  ### MOUSE & TRACKPAD #############################################################################################
  ##################################################################################################################

  # Acceleration (default false, true - linear, false - accelerated)
  defaults write NSGlobalDomain com.apple.mouse.linear -bool false &&

  # Speed (default "1.0", options: 0.125, 0.5, 0.6875, 0.875, 1.0, 1.5, 2.0, 2.5, 3.0)
  defaults write NSGlobalDomain com.apple.mouse.scaling -float "1.5" &&

  # Disable natural scroll
  defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false &&

  # Focus follows mouse (default false)
  defaults write com.apple.Terminal "FocusFollowsMouse" -bool true &&

  # Dragging without drag lock (default false)
  defaults write com.apple.AppleMultitouchTrackpad "Dragging" -bool true &&

  ##################################################################################################################
  ### MISSION CONTROL ##############################################################################################
  ##################################################################################################################

  # Rearrange automatically (default true)
  defaults write com.apple.dock "mru-spaces" -bool false &&

  # Group windows by application (default false)
  defaults write com.apple.dock "expose-group-apps" -bool true &&

  # Displays have separate spaces (default false)
  defaults write com.apple.spaces "spans-displays" -bool true &&

  ##################################################################################################################
  ### SCREENSHOTS ##################################################################################################
  ##################################################################################################################

  # Screenshot location
  mkdir -p "${SCREENSHOTS_FOLDER}" &&
  defaults write com.apple.screencapture location -string "${SCREENSHOTS_FOLDER}" &&

  # Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
  defaults write com.apple.screencapture type -string "png" &&

  ##################################################################################################################
  ### TIME MACHINE #################################################################################################
  ##################################################################################################################

  # Don't offer new disks for Time Machine backup (default false)
  defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool true &&

  ##################################################################################################################
  ### MISCELLANEOUS ################################################################################################
  ##################################################################################################################

  # Spring loading for all Dock items (default false)
  defaults write com.apple.dock "enable-spring-load-actions-on-all-items" -bool true &&

  # Show Music song notifications (default true)
  defaults write com.apple.Music "userWantsPlaybackNotifications" -bool false &&

  # Set 12h clock
  defaults write NSGlobalDomain "AppleICUForce24HourTime" -bool false &&

  # Set dark style as default
  defaults write NSGlobalDomain "AppleInterfaceStyle" -string "Dark" &&

  # Disable inline predictive text
  defaults write NSGlobalDomain "NSAutomaticInlinePredictionEnabled" -bool false &&

  # Disable typingautomatic period substition a.k.a. "smart stops".
  defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -int 0

# Disable typing automatic dash substitution e.g. "smart dashes".
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable typing automatic quote substitution a.k.a. "smart quotes".
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable typing automatic spelling correction a.k.a. "auto-correct".
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Disable typing automatic capitalization.
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false &&

  # Automatically hide menu bar
  defaults write NSGlobalDomain "_HIHideMenuBar" -bool true &&

  # Enable tap to click for trackpad
  defaults write NSGlobalDomain "com.apple.mouse.tapBehavior" -int 1 &&
  defaults write trackpad Clicking -bool true &&

  # Disable automatic updates
  defaults write SoftwareUpdate "AutomaticallyInstallMacOSUpdates" -bool false &&

  # Disable 'click wallpaper to reveal desktop'
  defaults write WindowManager "EnableStandardClickToShowDesktop" -bool false &&

  # Disable Stage Manager
  defaults write WindowManager "GloballyEnabled" -bool false &&

  # Hide AirDrop icon in menu bar (options: 18 = Display icon in menu bar 24 = Hide icon in menu bar)
  defaults write com.apple.controlcenter "AirDrop" -int 24 &&

  # Show battery percentage in menu bar
  defaults write com.apple.menuextra.battery ShowPercent -bool true &&

  # Show bluetooth icon in menu bar (options: 18 = Display icon in menu bar 24 = Hide icon in menu bar)
  defaults write com.apple.controlcenter "Bluetooth" -int 18 &&

  # Hide screen brightness control in menu bar (options: 18 = Display icon in menu bar 24 = Hide icon in menu bar)
  defaults write com.apple.controlcenter "Display" -int 24 &&

  # Hide focus mode control in menu bar (options: 18 = Display icon in menu bar 24 = Hide icon in menu bar)
  defaults write com.apple.controlcenter "FocusModes" -int 24 &&

  # Hide now playing in menu bar (options: 18 = Display icon in menu bar 24 = Hide icon in menu bar)
  defaults write com.apple.controlcenter "NowPlaying" -int 24 &&

  # Disable animation when switching screens or opening apps
  defaults write universalaccess reduceMotion -bool true &&

  # Reduce transparency
  defaults write universalaccess reduceTransparency -bool false &&

  # Speed up window resize time.
  defaults write NSGlobalDomain NSWindowResizeTime -float 0.001 &&

  # Only use UTF-8 in Terminal.app.
  defaults write com.apple.terminal StringEncodings -array 4 &&

  # Avoid creating .DS_Store files on network volumes.
  defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true &&

  # Prevent left and right swipe through history in Chrome
  defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false &&

  # Hide Siri
  defaults write com.apple.siri "StatusMenuVisible" 0 &&
  defaults write com.apple.systemuiserver "NSStatusItem Visible Siri" 0 &&

  # Hide Spotlight Icon
  defaults write com.apple.Spotlight "NSStatusItem Visible Item-0" 0 &&
  for app in "Dock" "Finder" "Music" "SystemUIServer" "Safari" "Terminal"; do
    killall "${app}" &>/dev/null
  done
