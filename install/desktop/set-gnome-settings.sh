# Center new windows in the middle of the screen
gsettings set org.gnome.mutter center-new-windows true

# Set InconsolataGo as the default monospace font
gsettings set org.gnome.desktop.interface monospace-font-name 'InconsolataGo Nerd Font Mono 10'

# Reveal week numbers in the Gnome calendar
gsettings set org.gnome.desktop.calendar show-weekdate true

# Show day of the week in the top-bar
gsettings set org.gnome.desktop.interface clock-show-weekday true

# Hide Workspaces and Applications buttons on top bar
gsettings set org.gnome.shell.extensions.pop-cosmic show-applications-button true
gsettings set org.gnome.shell.extensions.pop-cosmic show-workspaces-button true

# Move the clock to the right side of the top bar
gsettings set org.gnome.shell.extensions.pop-cosmic clock-alignment 'RIGHT'

# Enable natural scrolling
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true
