#!/bin/bash
echo "=== Creating Distrobox container ==="
distrobox create --name devbox --image fedora:41

echo "=== Installing packages inside devbox ==="
distrobox enter devbox -- sudo dnf install -y zsh git neovim util-linux-user

echo "=== Installing Starship inside devbox ==="
distrobox enter devbox -- curl -sS https://starship.rs/install.sh | sh

echo "=== Installing LazyVim ==="
distrobox enter devbox -- git clone https://github.com/LazyVim/starter ~/.config/nvim
distrobox enter devbox -- rm -rf ~/.config/nvim/.git

echo "=== Done! Run: devbox ==="
