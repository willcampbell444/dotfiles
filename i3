# This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

set $bg    #29343E
set $fg    #D2DCD0
set $blk   #384755
set $bblk  #29343E
set $red   #67645B
set $grn   #6C826C
set $ylw   #799994
set $blu   #7A9977
set $mag   #938FAB
set $cyn   #6C6C82
set $wht   #D2DCD0
set $bred  #5E5B53
set $bgrn  #476347
set $bylw  #6E8C87
set $bblu  #647E62
set $bmag  #7C7799
set $bcyn  #474768
set $bwht  #BFC8BE

set $focused #384755
set $unfocused #29343E

# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod4

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
# font pango:monospace 8

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
font pango:DejaVu Sans Mono 10

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal

new_window pixel 2
#hide_edge_borders both

gaps inner 8
#gaps top 55
gaps outer 12

# kill focused window
bindsym $mod+Shift+c kill

# start dmenu (a program launcher)
bindsym $mod+r exec rofi -show run
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

# change focus
bindsym $mod+a move workspace to output left
# bindsym $mod+s move workspace to output right
# bindsym $mod+w focus up
# bindsym $mod+d focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+Shift+v split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

bindsym Mod4+Shift+minus move scratchpad
bindsym Mod4+minus scratchpad show

# change container layout (stacked, tabbed, toggle split)
#bindsym $mod+s layout stacking
#bindsym $mod+w layout tabbed
#bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+p focus parent

# focus the child container
#bindsym $mod+d focus child

# switch to workspace
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10

bindsym $mod+Shift+b exec $HOME/dotfiles/polybar/exit.sh
bindsym $mod+b exec $HOME/dotfiles/polybar/launch.sh
# reload the configuration file
bindsym $mod+Shift+r reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+q restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym h resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym j resize shrink height 10 px or 10 ppt
        bindsym l resize grow width 10 px or 10 ppt

        bindsym a resize shrink width 10 px or 10 ppt
        bindsym w resize grow height 10 px or 10 ppt
        bindsym s resize shrink height 10 px or 10 ppt
        bindsym d resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

#bindsym $mod+r mode "resize"

bindsym XF86AudioRaiseVolume exec volume up
bindsym XF86AudioLowerVolume exec volume down
bindsym XF86AudioMute exec volume mute

bindsym XF86MonBrightnessUp exec sudo brightness up
bindsym XF86MonBrightnessDown exec sudo brightness down

bindsym Shift+XF86AudioPause exec mpc stop
bindsym XF86AudioNext exec mpc next
bindsym XF86AudioPrev exec mpc prev
bindsym XF86AudioPlay exec mpc toggle
bindsym XF86AudioPause exec mpc toggle

bindsym $mod+equal exec =

bindsym F7 exec toggletouchpad

# search key?
# printscreen
# display key

client.focused $focused $focused $wht $focused
client.focused_inactive $unfocused $unfocused #bwht $unfocused
client.unfocused $unfocused $unfocused #bwht $unfocused
client.focused_inactive $unfocused $unfocused #bwht $unfocused

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
# bar {
#         status_command i3status
# }

exec xrdb /home/will/.Xresources
exec compton -c --shadow-exclude '_NET_WM_OPAGUE_REGION@:c' &
exec $HOME/dotfiles/polybar/launch.sh
