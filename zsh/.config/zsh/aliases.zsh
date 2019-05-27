alias dotfiles='c ~/.dotfiles'
alias reload='source ~/.zshrc'
alias reboot2mac='sudo efibootmgr --bootnext 0080 && reboot'

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
    cd $1
}

u() {
    xdg-open "$(git remote get-url origin)" > /dev/null 2>&1
}

# GNOME3 lockscreen
alias lockscreen='xdg-screensaver lock'
alias bye='lockscreen'

# Minikube
minikubenv() {
    local s
    s=$(minikube status --format "{{.Host}}")
    
    kitty @set-tab-title minikube
    if [ $s != "Running" ]; then minikube start; fi
    eval $(minikube docker-env)
}
