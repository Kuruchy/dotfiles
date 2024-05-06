# Load global styles, colors and icons
source "$CONFIG_DIR/globalstyles.sh"

weather=(
  script="$PLUGIN_DIR/weather.sh"
  "${menu_defaults[@]}"
  popup.align=right
  update_freq=300
  icon.padding_right=0
  updates=on
)

sketchybar                                              \
  --add item weather right                              \
       --set weather "${weather[@]}"                    \
  --add item weather.details popup.weather              \
       --set weather.details "${menu_item_defaults[@]}" icon.drawing=off label.padding_left=0