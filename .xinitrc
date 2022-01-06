xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --dpi 238
nitrogen --restore &
devmon &
setxkbmap -option caps:super
setxkbmap -variant "altgr-intl"
xmodmap -e 'keycode 125 = Super_L'
xmodmap -e 'keycode 66 = Super_L'
exec i3
