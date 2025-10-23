
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load all config files
[[ -d ~/.bashrc.d ]] \
	&& for f in ~/.bashrc.d/*.sh; do [ -r "$f" ]&& . "$f"; done \
	&& unset f

# fzf
eval "$(fzf --bash)" # setup autocompletion

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Created by `pipx` on 2025-09-25 07:50:57
export PATH="$PATH:/home/sergio/.local/bin"

export HYPRSHOT_DIR="~/Images/Screenshots"
