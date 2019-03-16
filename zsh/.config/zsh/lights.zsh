# Lights control

# Brightness for Screen and Keyboard via dbus
gbrightness() {
    gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.freedesktop.DBus.Properties.Set org.gnome.SettingsDaemon.Power.$1 Brightness "<int32 $2>" > /dev/null
}

# Brightness for external monitor via i2c
ddcbrightness () {
    nohup ddcutil setvcp 10 $1 > /dev/null 2>&1 &!
}

# Philips Hue scene switcher
huescene() {
    # Default Group ID: 1 (living room)
    : "${2:=1}"
    id=$(hueadm scenes -o id,name -H | grep -m 1 $1 | awk '{split($0,a," "); print a[1]}')
    hueadm recall-scene $id $2 > /dev/null
}

nightlight() {
    gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
    gbrightness Screen 10
    gbrightness Keyboard 20
    ddcbrightness 0
    huescene nightworking
}

daylight() {
    gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false
    gbrightness Screen 25
    gbrightness Keyboard 75
    ddcbrightness 5
    huescene Bright
}