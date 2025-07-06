#!/usr/bin/env bash

if [ "$SENDER" = "front_app_switched" ]; then
#  sketchybar --set $NAME label="$INFO" icon.background.image="app.$INFO"
  sketchybar --set $NAME label="$INFO" icon="$($PLUGIN_DIR/icon_map.sh "$INFO")"
fi
