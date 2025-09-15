#!/bin/bash

# install yay
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
