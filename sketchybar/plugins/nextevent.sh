#!/usr/bin/env bash

render_item() {
  sketchybar --set $NAME label="$(date "+%I:%M %p")" \
             --set date icon.drawing=$drawing
}

update() {
  render_item
}

case "$SENDER" in
"routine" | "forced")
  update
  ;;
esac