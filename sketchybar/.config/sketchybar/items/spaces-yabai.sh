#!/usr/bin/env bash

SPACE_ICONS=("a" "s" "d" "f" "g" "z" "x" "c" "v" "b" "a" "s" "d" "f" "g" "z" "x" "c" "v" "b")

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
    icon.padding_left=6
    icon.padding_right=0 # 10
    padding_left=3
    padding_right=4
    label.padding_right=14 # 20
    icon.highlight_color=$RED
    label.color=$GREY
    label.highlight_color=$WHITE
    label.font="sketchybar-app-font:Regular:16.0"
    label.y_offset=-1
    background.color=$ITEM_BG_COLOR
    background.border_color=$ITEM_BG_COLOR
    script="$PLUGIN_DIR/space-yabai.sh"
    click_script="yabai -m space --focus $sid && sketchybar --trigger space_change"
  )

  sketchybar --add space space.$sid left \
             --set space.$sid "${space[@]}" \
             --subscribe space.$sid mouse.clicked
done

space_creator=(
  icon=""
  icon.font="$FONT:Semibold:14.0"
  padding_left=0
  padding_right=0
  label.drawing=off
  width=0
#  display=active
#  click_script='/run/current-system/sw/bin/yabai -m space --create'
  script="$PLUGIN_DIR/space_windows-yabai.sh"
  icon.color=$WHITE
)

sketchybar --add item space_creator left \
           --set space_creator "${space_creator[@]}" \
           --subscribe space_creator space_windows_change
