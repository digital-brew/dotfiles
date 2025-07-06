#!/usr/bin/env bash

sketchybar --add item front_app left \
           --set front_app       background.color=$ACCENT_COLOR \
                                 icon.color=$BAR_COLOR \
                                 display=active \
                                 icon.padding_left=16 \
                                 label.padding_right=16 \
                                 icon.font="sketchybar-app-font:Regular:17.0" \
                                 label.color=$BAR_COLOR \
                                 script="$PLUGIN_DIR/front_app.sh"            \
                                 click_script="open -a 'Mission Control'" \
           --subscribe front_app front_app_switched
