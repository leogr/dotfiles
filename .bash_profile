# Locale
export LANG=en_US.utf-8

# Bash
export SHELL=/opt/local/bin/bash

# Colors
source ~/.dotfiles/theme/colors.theme.bash

# Git prompt
. ~/.dotfiles/git/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="verbose git"
export GIT_PS1_SHOWCOLORHINTS=true

# Prompt
export PROMPT_COMMAND_WRAPPER='__git_ps1 "${gray}\u@\h:${cyan}\w${reset_color}" "\\\$ " "${gray}(${reset_color}%s${gray})${reset_color}"'
export PROMPT_COMMAND="$PROMPT_COMMAND;$PROMPT_COMMAND_WRAPPER"