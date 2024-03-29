alias dotfiles='c ~/.dotfiles'

alias ls='ls --color=tty -ha'

# App shortcuts
f() {
    : "${1:=.}"
    nohup nautilus -w $1 > /dev/null 2>&1 &!
}
alias fh='f ~'

c() {
    : "${1:=.}"
    code $1
    [ -d "$1" ] && cd $1
}

u() {
    xdg-open "$(git remote get-url origin)" > /dev/null 2>&1
}

btreload() {
    sudo modprobe -r btusb
    sudo modprobe btusb
    sleep 1
    sudo systemctl restart bluetooth
}

# GNOME3 lockscreen
alias lockscreen='xdg-screensaver lock'
alias bye='lockscreen'

# etc...

alias paclist="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"