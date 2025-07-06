#!/usr/bin/env bash

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "1" "2" "3" "4" "5" "6" "1" "2" "3" "4" "5" "6")

# Destroy space on right click, focus space on left click.
# New space by left clicking separator (>)

sid=0
spaces=()
for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))

  space=(
    space=$sid
    icon="${SPACE_ICONS[i]}"
    icon.padding_left=10
    icon.padding_right=10
    padding_left=3
    padding_right=4
    label.padding_right=20
    icon.highlight_color=$RED
    label.color=$GREY
    label.highlight_color=$WHITE
    label.font="sketchybar-app-font:Regular:16.0"
    label.y_offset=-1
    background.color=$ITEM_BG_COLOR
    background.border_color=$ITEM_BG_COLOR
    script="$PLUGIN_DIR/space.sh"
    click_script="yabai -m space --focus $sid && sketchybar --trigger space_change"
  )

  sketchybar --add space space.$sid left \
             --set space.$sid "${space[@]}" \
             --subscribe space.$sid mouse.clicked
done

space_creator=(
  icon=""
  icon.font="$FONT:Semibold:15.0"
  padding_left=0
  padding_right=0
  label.drawing=off
  width=0
#  display=active
#  click_script='/run/current-system/sw/bin/yabai -m space --create'
  script="$PLUGIN_DIR/space_windows.sh"
  icon.color=$WHITE
)

sketchybar --add item space_creator left \
           --set space_creator "${space_creator[@]}" \
           --subscribe space_creator space_windows_change
