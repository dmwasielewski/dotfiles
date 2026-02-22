#!/bin/bash
echo "=== Installing packages via apt ==="
sudo apt update
sudo apt install -y zsh tmux git \
    zsh-autosuggestions zsh-syntax-highlighting

echo "=== Installing Starship ==="
curl -sS https://starship.rs/install.sh | sh

echo "=== Copying configs ==="
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DOTFILES_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
cp -f "$DOTFILES_DIR/shared/.zshrc" ~/
mkdir -p ~/.config/starship ~/.config/tmux
cp -f "$DOTFILES_DIR/shared/.config/starship/starship.toml" ~/.config/starship.toml
cp -f "$DOTFILES_DIR/shared/.config/tmux/tmux.conf" ~/.config/tmux/

echo "=== Installing Catppuccin Tmux plugin ==="
mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.1.0 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux

echo "=== Setting Zsh as default shell ==="
chsh -s $(which zsh)

echo "=== Done! Please restart terminal. ==="
