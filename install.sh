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

function backup () {
    if [ -f "$1" ]; then
        if [ -f "backup/$(basename -- "$1")" ]; then
            rm "backup/$(basename -- "$1")"
        fi
        mv "$1" "backup/$(basename -- "$1")"
    fi

}

echo "# ====================== Starting Setup ============================= #"
# Backup files just incase something goes wrong
BACKUPS="False"
if ask "Do you want to enable backups?"; then
    BACKUPS="True"
fi

# Check what shell is being used
SH="${HOME}/.bashrc"
ZSHRC="${HOME}/.zshrc"
if [ -f "$ZSHRC" ]; then
    SH="$ZSHRC"
    if ask "Do you want to install .zshrc?"; then
        if [ -f "$ZSHRC" ]; then
            if [ "$BACKUPS" = True ]; then
                backup "$ZSHRC"
            fi
            if [ -L "$ZSHRC" ]; then
                rm "$ZSHRC"
            fi
        fi
        ln -s "$(realpath ".zshrc")" ~/.zshrc
    fi
else
    if [ "$BACKUPS" = True ]; then
        backup "$SH"
    fi
fi

echo "# ====================== Custom Files ============================= #" >> $SH
echo "# ====================== Custom Files ============================= #"
echo "Do you want $SH to source: "
for file in shell/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        if ask "${filename}?"; then
            echo "source $(realpath "$file")" >> "$SH"
        fi
    fi
done

echo "# ====================== Private Files ============================= #" >> $SH
echo "# ====================== Private Files ============================= #"
echo "Do you want to source: "
for file in private/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        if ask "${filename}?"; then
            echo "source $(realpath "$file")" >>"$SH"
        fi
    fi
done

# Config Files
echo "# ====================== Config Files ============================= #"
if ask "Do you want to install .tmux.conf?"; then
    if [ -f "$HOME/.tmux.conf" ]; then
        if [ "$BACKUPS" = True ]; then 
            backup "$HOME/.tmux.conf"
        fi
        if [ -f "$HOME/.tmux.conf" ] || [ -L "$HOME/.tmux.conf" ]; then
            rm "$HOME/.tmux.conf"
        fi
    fi
    ln -s "$(realpath ".tmux.conf")" ~/.tmux.conf
fi

if ask "Do you want to install .vimrc?"; then
    if [ -f "$HOME/.vimrc" ]; then
        if [ "$BACKUPS" = True ]; then 
            backup "$HOME/.vimrc"
        fi
        if [ -f "$HOME/.vimrc" ] || [ -L "$HOME/.vimrc" ]; then
            rm "$HOME/.vimrc"
        fi
    fi
    ln -s "$(realpath ".vimrc")" ~/.vimrc
fi


# ADD .gitconfig

# Reload instance so all changes take effect
echo "# ====================== Finished Setup ============================= #"
if ask "Do you want to source $SH?"; then
    # If using bash then source .bashrc else run zsh
    if [ "$SH" = "$ZSHRC" ]; then
        zsh
    else
        source "$SH"
    fi
fi
exit 0