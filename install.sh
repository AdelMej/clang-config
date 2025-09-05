#!/bin/bash

# -----------------------------
# Clang-configs installer / updater
# -----------------------------

# Base directory for configs
CONFIG_DIR=~/clang-configs

# Create main clang-configs folder if it doesn't exist
mkdir -p "$CONFIG_DIR/C"
mkdir -p "$CONFIG_DIR/Python"

# Copy style files (overwrite if updating)
cp -r ./C/* "$CONFIG_DIR/C/"
cp -r ./Python/* "$CONFIG_DIR/Python/"

echo "Clang-configs installed/updated!"

# Check if use_clang function exists in .zshrc
if ! grep -q "use_clang()" ~/.zshrc; then
	echo '
# Helper function to copy clang-format style
use_clang() {
    cp ~/clang-configs/$1/$2/.clang-format ./
    echo "Clang-format for $1 ($2 style) copied!"
}
' >>~/.zshrc
	echo "Added use_clang() helper to ~/.zshrc. Reload your shell to use it."
fi
