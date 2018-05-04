alias dotfiles='code ~/.dotfiles'

alias ls='ls -G'
alias ll='ls -lha'

alias reload='source ~/.bash_profile'

# OSX lockscreen
alias lockscreen='~/.dotfiles/bin/lockscreen'
alias bye='lockscreen'

# Mute/Unmute the system volume. Plays nice with all other volume settings.
alias mute="osascript -e 'set volume output muted true'"
alias unmute="osascript -e 'set volume output muted false'"

# Apps
alias f='open -a Finder '
alias fh='open -a Finder .'
alias textedit="open -a TextEdit"
alias chrome="open -a google\ chrome"
alias safari="open -a safari"
alias firefox="open -a firefox"
if [ -s /usr/bin/firefox ] ; then
  unalias firefox
fi

# Other stuff
alias alpine='docker run -it --rm -v ~/:/Users/$(whoami) alpine sh'
