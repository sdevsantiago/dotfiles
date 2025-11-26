#
# ~/.bashrc.d/20_prompt.sh
#

# Enable git prompt support
[[ -f /usr/share/git/completion/git-prompt.sh ]] \
	&& . /usr/share/git/completion/git-prompt.sh

# Prompt customization
#
# Bash has several prompts which can be customized to increase productivity,
# aesthetic appeal and nerd cred. There are five prompt strings that can be
# customized:
#
# 1) PS0 is displayed after each command, before any output
# 2) PS1 is the primary prompt which is displayed after each command
# 3) PS2 is the secondary prompt displayed when a command needs more input
#        (e.g. multi-line commands)
# 4) PS3 is the prompt displayed for Bash's 'select' built-in which displays
#        interactive menus. It is usually customized in the script where the
#        'select' built-in is used.
# 5) PS4 is displayed when debugging bash scripts to indicate levels of
#        indirection. The first character is repeated to indicate deeper levels.
#
# Special characters
# - \u -> user
# - \W -> path (folder name only)
# - \w -> path (full path, formatted)
# - \h -> hostname
# - \$ -> $

PS1=' '											# linux icon
PS1+="${BOLD}${CYAN}\u${RESET} "					# user
PS1+="${BOLD}${BLUE}\w${RESET} "					# current path
PS1+='$(__git_ps1 "'"${YELLOW}at  %s${RESET}"'")'	# git branch
PS1+='\n'											# newline
PS1+="${MAGENTA}\\$ ${RESET}"						# $ or #

#rightprompt()
#{
#    printf "%*s" $COLUMNS "right prompt"
#}
#
#PS1='\[$(tput sc; rightprompt; tput rc)\]left prompt > '

#PS1="\$? > "              - simple
# or
#PS1='$? > '
#exitstatus()              - emoji
#{
#    if [[ $? == 0 ]]; then
#        echo ':)'
#    else
#        echo 'D:'
#    fi
#}
#PS1='$(exitstatus) > '
