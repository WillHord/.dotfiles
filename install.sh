#!/bin/bash

function ask() {
  read -p "$1 (Y/n): " response
  if [ -z "$response" ]; then
    responce_lc = "y"
  else
    response_lc = $(echo "$response" | tr '[:upper:]' '[:lower:]')
  fi 
  [ "$response_lc" = "y" ]
}

# Check what shell is being used
SH="${HOME}/.bashrc"
ZSHRC="${HOME}/.zshrc"
if [ -f "$ZSHRC" ]; then
	SH="$ZSHRC"
fi

echo "Do you want $SH to source: "
for file in shell/*; do 
  if [ -f "$file" ]; then
    filename = $(basename "$file")
    if ask "${filename}?"; then
      echo "source $(realpath "$file")" >> "$SH"
    fi 
  fi 
done


# Config Files
if ask "Do you want to install .tmux.conf?"; then
  ln -s "$(realpath ".tmux.conf")" ~/.tmux.conf 
fi 

if ask "Do you want to install .vimrc?"; then
  ln -s "$(realpath ".vimrc")" ~/.vimrc 
fi 



