#!/usr/bin/env bash

POPUP_OFF='sketchybar --set apple.logo popup.drawing=off'
POPUP_CLICK_SCRIPT='sketchybar --set $NAME popup.drawing=toggle'

apple_logo=(
  icon=$APPLE
  icon.font="$FONT:Semibold:15.0"
  icon.color=$WHITE
  icon.padding_left=15
  icon.padding_right=15
  padding_right=4
  label.drawing=off
  click_script="$POPUP_CLICK_SCRIPT"
  popup.height=35
)

apple_prefs=(
  icon=$PREFERENCES
  label="Preferences"
  background.color=$BAR_COLOR
  padding_left=$POPUP_ITEM_PADDINGS
  padding_right=$POPUP_ITEM_PADDINGS
  click_script="open -a 'System Preferences'; $POPUP_OFF"
)

apple_activity=(
  icon=$ACTIVITY
  label="Activity"
  background.color=$BAR_COLOR
  padding_left=$POPUP_ITEM_PADDINGS
  padding_right=$POPUP_ITEM_PADDINGS
  click_script="open -a 'Activity Monitor'; $POPUP_OFF"
)

apple_lock=(
  icon=$LOCK
  label="Lock Screen"
  background.color=$BAR_COLOR
  padding_left=$POPUP_ITEM_PADDINGS
  padding_right=$POPUP_ITEM_PADDINGS
  click_script="pmset displaysleepnow; $POPUP_OFF"
)

apple_sketchybar=(
  icon=$SKETCHYBAR_RELOAD
  label="Reload SketchyBar"
  background.color=$BAR_COLOR
  padding_left=$POPUP_ITEM_PADDINGS
  padding_right=$POPUP_ITEM_PADDINGS
  click_script="killall sketchybar; $POPUP_OFF"
)

apple_yabai=(
  icon=$YABAI_GRID
  label="Reload Yabai"
  background.color=$BAR_COLOR
  padding_left=$POPUP_ITEM_PADDINGS
  padding_right=$POPUP_ITEM_PADDINGS
  click_script="killall yabai && sudo yabai --load-sa; $POPUP_OFF"
)

sketchybar --add item apple.logo left                         \
           --set apple.logo "${apple_logo[@]}"         \
                                                              \
           --add item apple.prefs popup.apple.logo            \
           --set apple.prefs "${apple_prefs[@]}"              \
                                                              \
           --add item apple.activity popup.apple.logo         \
           --set apple.activity "${apple_activity[@]}"        \
                                                              \
           --add item apple.lock popup.apple.logo             \
           --set apple.lock "${apple_lock[@]}"                \
                                                              \
           --add item apple.sketchybar popup.apple.logo       \
           --set apple.sketchybar "${apple_sketchybar[@]}"    \
                                                              \
           --add item apple.yabai popup.apple.logo            \
           --set apple.yabai "${apple_yabai[@]}"

