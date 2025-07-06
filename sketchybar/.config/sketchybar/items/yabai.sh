#!/usr/bin/env bash

yabai=(
#  icon.width=0
#  label.width=0
  script="$PLUGIN_DIR/yabai.sh"
  icon.font="sketchybar-app-font:Regular:16.0"
  icon.padding_left=8
  icon.padding_right=10
  label.font="$FONT:Semibold:14.0"
  display=active
)

sketchybar --add event window_focus            \
           --add item yabai left               \
           --set yabai "${yabai[@]}"           \
           --subscribe yabai window_focus      \
                             mouse.clicked
