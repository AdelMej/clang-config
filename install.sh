#!/bin/bash

# Detect shell and set rc file
if [ "$SHELL" = "/usr/bin/zsh" ] || [ "$SHELL" = "/bin/zsh" ]; then
	RC_FILE="$HOME/.zshrc"
elif [ "$SHELL" = "/bin/bash" ] || [ "$SHELL" = "/usr/bin/bash" ]; then
	RC_FILE="$HOME/.bashrc"
else
	echo "Unsupported shell, please add use_clang() manually"
	exit 1
fi

# Create clang-configs directory if missing
mkdir -p "$HOME/clang-configs"
echo "Created ~/clang-configs directory (or already exists)"

for lang in */; do
	lang_name=${lang%/}
	mkdir -p "$HOME/clang-configs/$lang_name"

	for style_path in "$lang"*; do
		if [ -d "$style_path" ] && [ -f "$style_path/.clang-format" ]; then
			cp -r "$style_path" "$HOME/clang-configs/$lang_name/"
			echo "Copied $style_path to $HOME/clang-configs/$lang_name/"
		fi
	done
done

# Append the function if not already present
if ! grep -q "use_clang()" "$RC_FILE"; then
	cat >>"$RC_FILE" <<'EOF'

	use_clang() {
		cp ~/clang-configs/$1/$2/.clang-format ./
		echo "Clang-format for $1 ($2 style) copied!"
	}
EOF
	echo "use_clang() added to $RC_FILE"
else
	echo "use_clang() already exists in $RC_FILE"
fi

echo "Done! Restart your terminal or run 'source $RC_FILE' to use use_clang()"
