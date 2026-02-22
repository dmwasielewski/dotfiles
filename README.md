# Dotfiles — Fedora Atomic COSMIC

Personal development environment for Fedora 43 COSMIC Atomic.

## Architecture

| Layer | Tools |
|---|---|
| Host (rpm-ostree) | zsh, tmux, git, alacritty, starship |
| Flatpak | Vivaldi, Obsidian, Spotify |
| Distrobox (devbox) | neovim, dev tools |

## Fresh Install Instructions

### 1. Clone repo
```bash
git clone git@github.com:dmwasielewski/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Install host setup
```bash
bash scripts/install-host.sh
```
Reboot after.

### 3. Install Flatpak apps
```bash
bash scripts/install-flatpaks.sh
```

### 4. Install devbox
```bash
bash scripts/install-devbox.sh
```

## Known Issues & Fixes
- Tmux window names: `run` must be last line in tmux.conf
- Alacritty shell deprecated: run `alacritty migrate` after setup
- Starship has no tmux module — session name shows in Tmux status bar
- COSMIC shortcuts must be set via config file, not Settings UI
