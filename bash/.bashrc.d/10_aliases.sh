#
# ~/.bashrc.d/10_aliases
#

# sudo

alias please='sudo'

# ls

alias ls='lsd --color=auto --classify'
alias la='ls -a'
alias l='la'
alias ll='ls -la'

# mkdir

alias mkdir='mkdir -p'

# grep

alias grep='grep --color=auto'

# disk management

alias unmount='umount'

# fzf

alias fzf="fzf -m --style=full --preview='bat --color=always {}'"
alias miv="fzf --bind 'enter:become(vim {})'"

# fastfetch

alias neofetch='fastfetch'

# valgrind

alias helgrind='valgrind --tool=helgrind'
alias drd='valgrind --tool=drd'
