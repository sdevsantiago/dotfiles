#!/bin/bash

# install yay
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install vscode (microsoft fork)
yay -Sy visual-studio-code-bin

# install slack
yay -Sy slack-desktop

# install norminette
pipx install norminette && pipx ensurepath

# install wormhole
pipx install wormhole

# install screen sharing dependencies
#yay -Sy xwaylandvideobridge

# install quickshell
# dependencies
sudo pacman --needed -Sy cmake qt6-base qt6-declarative qt6-shadertools qt6-wayland qt6-svg spirv-tools pkg-config cli11
# crash reporter
sudo pacman -needed -Sy google-breakpad
# jemalloc (for lower memory usage)
sudo pacman -needed -Sy jemalloc
# wayland
sudo pacman -needed -Sy qt6-wayland wayland hyprwayland-scanner wayland-protocols
# quickshell
yay -S quickshell


