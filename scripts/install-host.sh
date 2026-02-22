#!/bin/bash
echo "=== Installing host packages via rpm-ostree ==="
rpm-ostree install zsh tmux git alacritty \
    zsh-autosuggestions zsh-syntax-highlighting

echo "=== Installing Starship ==="
curl -sS https://starship.rs/install.sh | sh

echo "=== Installing Nerd Fonts ==="
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLo "JetBrainsMono.zip" https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip -d JetBrainsMono
fc-cache -fv

echo "=== Copying configs ==="
cp -f host/.zshrc ~/
mkdir -p ~/.config/starship ~/.config/tmux ~/.config/alacritty
mkdir -p ~/.config/cosmic/com.system76.CosmicSettings.Shortcuts/v1
cp -f host/.config/starship/starship.toml ~/.config/starship.toml
cp -f host/.config/tmux/tmux.conf ~/.config/tmux/
cp -f host/.config/alacritty/alacritty.toml ~/.config/alacritty/
cp -f host/.config/cosmic/custom ~/.config/cosmic/com.system76.CosmicSettings.Shortcuts/v1/

echo "=== Installing Catppuccin Tmux plugin ==="
mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.1.0 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux

echo "=== Setting Zsh as default shell ==="
chsh -s $(which zsh)

echo "=== Done! Please reboot. ==="
