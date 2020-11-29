#!/bin/bash

set -x

wallpaper_path="/home/hm/Nutstore/pictures/collect/wallpapers/01"
background_image_source="${wallpaper_path}/23.jpg"
updbackground_script_path="/home/hm/tools/updbackground.sh"
transparent_terminal_script_path="/home/hm/tools/transparent-terminal.sh"

#gnome background
gsettings set org.gnome.desktop.background picture-options zoom
gsettings set org.gnome.desktop.background show-desktop-icons false

gsettings set org.gnome.desktop.interface gtk-im-module 'gtk-im-context-simple'

# gsettings set org.gnome.desktop.notifications application-children org-freedesktop-problems-applet 

# screensaver
# gsettings set org.gnome.desktop.screensaver picture-uri "file:///usr/share/wallpapers/01/52.jpg"

# Whether to play sounds on user events.
gsettings set org.cinnamon.desktop.sound event-sounds false

#Enable toggle keys sounds when num or capslock are changed
gsettings set org.cinnamon.desktop.a11y.keyboard togglekeys-enable-beep true

gsettings set org.cinnamon.sounds login-enabled false
gsettings set org.cinnamon.sounds map-enabled false
gsettings set org.cinnamon.sounds maximize-enabled false
gsettings set org.cinnamon.sounds switch-enabled false
gsettings set org.cinnamon.sounds notification-enabled false
gsettings set org.cinnamon.sounds tile-enabled false
gsettings set org.cinnamon.sounds minimize-enabled false
gsettings set org.cinnamon.sounds close-enabled false
gsettings set org.cinnamon.sounds unmaximize-enabled false
gsettings set org.cinnamon.sounds logout-enabled true
gsettings set org.cinnamon.sounds unplug-enabled true
gsettings set org.cinnamon.sounds plug-enabled true

#Enable toggle keys osd popups when num or capslock are changed
gsettings set org.cinnamon.desktop.a11y.keyboard togglekeys-enable-osd true

# Configure bluetooth
gsettings set org.blueberry tray-enabled true
gsettings set org.blueberry obex-enabled false

#background picture
gsettings set org.cinnamon.desktop.background.slideshow image-source "directory://$wallpaper_path"
gsettings set org.cinnamon.desktop.background picture-uri "file://${background_image_source}"

# display date in the clock, in addition to time.
gsettings set org.cinnamon.desktop.interface clock-show-date true

# Name of the input method module used by GTK+.
gsettings set org.cinnamon.desktop.interface gtk-im-module "ibus:xim"

# Icon theme to use for the panel, nautilus etc.
gsettings set org.cinnamon.desktop.interface icon-theme 'Mint-Y-Dark-Aqua'

# Size of icons in toolbars, either "small" or "large".
gsettings set org.cinnamon.desktop.interface toolbar-icons-size small

gsettings set org.nemo.desktop computer-icon-visible false
gsettings set org.nemo.desktop trash-icon-visible true
gsettings set org.nemo.desktop home-icon-visible true
gsettings set org.cinnamon.muffin desktop-effects false
gsettings set org.cinnamon desktop-effects-on-menus false
gsettings set org.cinnamon desktop-effects-on-dialogs false
gsettings set org.cinnamon startup-animation false

# keybindings start----------------------------------------------------------------------
# custom keybindings
gsettings set org.cinnamon.desktop.keybindings custom-list "['custom0', 'custom1', 'custom2', 'custom3', 'custom4']"
# show desktop
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom0/ name 'updbackground'
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom0/ binding "['<Shift><Super>d']"
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom0/ command $updbackground_script_path

# Ctrl+Alt+Del to quit the computer;changed logout bindkeys to Ctrl+Alt+End
gsettings set org.cinnamon.desktop.keybindings.media-keys logout "['<Primary><Alt>End']"
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom1/ name 'quit'
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom1/ binding "['<Primary><Alt>Delete']"
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom1/ command 'cinnamon-session-quit --power-off'

# Alt+R to quick launch
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom2/ name 'run dialog'
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom2/ binding "['<Super>r']"
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom2/ command 'rofi -show drun -show-icons'

# Ctrl+Alt+= make terminal more transparent
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom3/ name 'light terminal'
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom3/ binding "['<Primary><Alt>equal']"
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom3/ command "sh ${transparent_terminal_script_path} + 20"

# Ctrl+Alt+- make terminal less transparent
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom4/ name 'dark terminal'
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom4/ binding "['<Primary><Alt>minus']"
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom4/ command "sh ${transparent_terminal_script_path} - 20"

# Keybinding<Super> for toggling the looking glass,default Super,delete it
gsettings set org.cinnamon.desktop.keybindings looking-glass-keybinding []

# <Super>l to lock screen
gsettings set org.cinnamon.desktop.keybindings.media-keys screensaver "['<Control><Alt>l', '<Super>l']"

# Ctrl+shift+alt+l to shutdown(less used)
gsettings set org.cinnamon.desktop.keybindings.media-keys shutdown "['<Primary><Shift><Alt>End', 'XF86PowerOff']"

# Binding Super+t to launch the terminal.
gsettings set org.cinnamon.desktop.keybindings.media-keys terminal "['<Super>t']"

# Super+w to lauch web browser
gsettings set org.cinnamon.desktop.keybindings.media-keys www "['<Super>w']"

# Number of workspaces. Must be more than zero, and has a fixed maximum to prevent making the desktop unusable by accidentally asking for too many workspaces.
gsettings set org.cinnamon.desktop.wm.preferences num-workspaces 10

# Allow cycling through workspaces
gsettings set org.cinnamon.muffin workspace-cycle true

# Super+num to Switch to workspace num
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-1 "['<Super>1']" 
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-2 "['<Super>2']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-3 "['<Super>3']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-4 "['<Super>4']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-5 "['<Super>5']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-6 "['<Super>6']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-7 "['<Super>7']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-8 "['<Super>8']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-9 "['<Super>9']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-10 "['<Super>0']"

# Super+shift+num Move window to workspace num
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-1 "['<Shift><Super>exclam']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-2 "['<Shift><Super>at']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-3 "['<Shift><Super>numbersign']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-4 "['<Shift><Super>dollar']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-5 "['<Shift><Super>percent']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-6 "['<Shift><Super>asciicircum']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-7 "['<Shift><Super>ampersand']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-8 "['<Shift><Super>asterisk']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-9 "['<Shift><Super>parenleft']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-10 "['<Shift><Super>parenright']"

# List of x-content/* types for which the user have chosen "Do Nothing" in the preference capplet. No prompt will be shown nor will any matching application be started on insertion of media matching these types.
gsettings set org.cinnamon.desktop.media-handling autorun-x-content-ignore "['x-content/image-dcf']"
# gsettings set org.cinnamon.desktop.media-handling automount "false"
gsettings set org.cinnamon.desktop.media-handling automount-open "false" 

# This is the message that appears on the lock screen by default.
# gsettings set org.cinnamon.desktop.screensaver default-message "hello world"

# The action to take when the laptop lid is closed and the laptop is on AC power.
gsettings set org.cinnamon.settings-daemon.plugins.power lid-close-ac-action blank

# The amount of time in seconds the computer on battery power needs to be inactive before it goes to sleep. A value of 0 means never.
gsettings set org.cinnamon.settings-daemon.plugins.power sleep-inactive-battery-timeout 10800

# The name of the theme
gsettings set org.cinnamon.theme name Adapta-Nokto

# Cinnamon applets have a uuid property; this key lists applets which should be loaded. Append ! in front of uuid to override version check.
gsettings set org.cinnamon enabled-applets "['panel1:right:14:systray@cinnamon.org:0', 'panel1:left:0:menu@cinnamon.org:1', 'panel1:right:15:keyboard@cinnamon.org:4', 'panel1:right:16:notifications@cinnamon.org:5', 'panel1:right:17:removable-drives@cinnamon.org:6', 'panel1:right:19:network@cinnamon.org:7', 'panel1:right:21:power@cinnamon.org:9', 'panel1:right:22:calendar@cinnamon.org:10', 'panel1:right:23:sound@cinnamon.org:11', 'panel1:left:4:window-list@cinnamon.org:12', 'panel1:left:3:spacer@cinnamon.org:15']"

# For lenovo t450:The size (width, height) of the GtkFileChooserDialog's window, in pixels.
gsettings set org.gtk.Settings.FileChooser window-size '(990, 715)'

# keybindings end------------------------------------------------------------------------


