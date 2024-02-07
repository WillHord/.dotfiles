#!/bin/bash

function ask() {
    read -p "$1 (Y/n): " response
    if [ -z "$response" ]; then
        responce_lc="y"
    else
        response_lc=$(echo "$response" | tr '[:upper:]' '[:lower:]')
    fi
    [ "$response_lc" = "y" ]
}

if [ $# -eq 0 ]; then
  echo "Usage: mkalias alias=command"
  exit 1
fi

input=$1
IFS="=" read -r alias_name alias_command <<< "$input"

# Check if both alias name and command were provided
if [ -z "$alias_name" ] || [ -z "$alias_command" ]; then
  echo "Invalid format. Please use: alias=command"
  exit 1
fi

alias "$alias_name"="$alias_command"
echo "alias $alias_name='$alias_command'" >> ~/.dotfiles/shell/aliases.sh

# Optionally, echo back the created alias for confirmation
echo "Alias created: $alias_name='$alias_command'"

# ask if the user wants to restart the shell
if ask "Do you want to restart the shell?"; then
  exec $SHELL
fi
