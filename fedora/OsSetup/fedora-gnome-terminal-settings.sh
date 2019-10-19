#!/bin/bash

set -x

# Keyboard shortcut to open the Preferences dialog
gsettings set org.gnome.Terminal.Legacy.Keybindings preferences '<Alt>F12'

# Whether to show the menubar in new windows
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

UUID=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \') 

# Default color of terminal background
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ background-color 'rgb(0,43,54)'

# Default color of text in the terminal
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ foreground-color 'rgb(181,137,0)'

# Whether bold is also bright
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ bold-is-bright true

# For lenovo t450:Number of columns in newly created terminal windows. Has no effect if use_custom_default_size is not enabled.
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ default-size-columns 105

# For lenovo t450:Number of rows in newly created terminal windows. Has no effect if use_custom_default_size is not enabled.
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ default-size-rows 28

# When to show the scrollbar
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ scrollbar-policy 'never'

# Whether to use the colors from the theme for the terminal widget
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ use-theme-colors 'false'

# Whether to use a transparent background
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ use-transparent-background 'true'

# Human-readable name of the profile.
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ visible-name 'cinnamon'


