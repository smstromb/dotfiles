#!/bin/bash
WS_LAYOUT_FILE=~/.config/i3/layouts/development.json

i3-msg append_layout "$WS_LAYOUT_FILE"

gnome-terminal --working-directory=$1 -e "bash -c \"gulp; exec bash\""
gnome-terminal --working-directory=$1
subl3 $1
google-chrome-stable --new-window http://localhost:3000