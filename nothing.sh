#!/usr/bin/env bash
clear
echo "nothing?"
echo "choose nothing:"
echo "1. nothing"
echo "2. nothing!"
echo "3. nothing"
read -r
xdg-open "https://google.com/search?q=nothing" >/dev/null 2>&1 &
DESKTOP_PATH=$(xdg-user-dir DESKTOP 2>/dev/null || echo "$HOME/Desktop")
mkdir -p "$DESKTOP_PATH/nothing"
xdg-open "$DESKTOP_PATH" >/dev/null 2>&1 &
if command -v notify-send >/dev/null 2>&1; then
    notify-send "Nothing"
fi