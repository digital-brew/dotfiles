#!/usr/bin/env bash

front_app=(
  label.font="$FONT:Semibold:15.0"
  icon.background.drawing=off
#  icon.background.drawing=on
#  icon.background.image.padding_left=15
#  icon.background.image.scale="0.5"
#  icon.background.image.y_offset=-1
  label.padding_left=10
  label.padding_right=20
  label.color=$BAR_COLOR
  background.color=$ACCENT_COLOR
  display=active
  script="$PLUGIN_DIR/front_app.sh"
  click_script="open -a 'Mission Control'"
)

sketchybar --add item front_app left         \
           --set front_app "${front_app[@]}" \
           --subscribe front_app front_app_switched
