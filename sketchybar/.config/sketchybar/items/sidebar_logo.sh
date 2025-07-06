#!/usr/bin/env bash

sidebar_logo=(
  icon=$SIDEBAR_LOGO
  icon.font="$FONT:Black:16.0"
  icon.color=$GREEN
  padding_right=15
  label.drawing=off
  popup.height=35
)

sketchybar --add item sidebar.logo left                         \
           --set sidebar.logo "${sidebar_logo[@]}"     associated_display=2

