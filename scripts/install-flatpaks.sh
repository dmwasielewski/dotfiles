#!/bin/bash
echo "=== Installing Flatpak apps ==="
while read app; do
    flatpak install -y flathub $app
done < "$(dirname "$0")/flatpaks.txt"
echo "=== Done ==="
