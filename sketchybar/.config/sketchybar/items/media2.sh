#!/usr/bin/env bash

media=(
  icon.background.drawing=on
  icon.background.image=media.artwork
  icon.background.image.corner_radius=5
  icon.background.image.scale="0.8"
  script="$PLUGIN_DIR/media2.sh"
#  icon.y_offset=2
  label.max_chars=26
  label.padding_left=8
  scroll_texts=on
  updates=on
)

sketchybar --add item media center \
           --set media "${media[@]}" \
           --subscribe media media_change
