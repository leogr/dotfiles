alias dotfiles='code ~/.dotfiles'

alias ls='ls -G'
alias ll='ls -lha'

alias reload='source ~/.bash_profile'

alias lockscreen='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias bye='lockscreen'

alias alpine='docker run -it --rm -v ~/:/Users/$(whoami) alpine sh'
