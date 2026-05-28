# Refer to the wiki for more information.
# https://wiki.hypr.land/Configuring/

$hypr_conf = ~/.config/hypr


#####################################
## DEBUG OUTPUT IN CASE OF TROUBLE ##
#####################################

#debug {
#	disable_logs = false
#}


###################
### MY PROGRAMS ###
###################

# See https://wiki.hypr.land/Configuring/Keywords/

# Set programs that you use
$terminal = kitty
$fileManager = dolphin
$menu = rofi -show combi -combi-modes "drun" -modes combi


#################
### AUTOSTART ###
#################

# Autostart necessary processes (like notifications daemons, status bars, etc.)
# Or execute your favorite apps at launch like this:

# exec-once = $terminal
# exec-once = nm-applet &
exec-once = waybar
exec-once = hyprpaper & $hypr_conf/scripts/wallpaper
exec-once = hyprpm reload -n
exec-once = systemctl --user start hyprpolkitagent
exec-once = nm-applet
exec-once = wl-paste --watch cliphist store

################
### MONITORS ###
################

# See https://wiki.hypr.land/Configuring/Monitors/

source = $hypr_conf/monitors.conf


#############################
### ENVIRONMENT VARIABLES ###
#############################

# See https://wiki.hypr.land/Configuring/Environment-variables/
# TODO if using uwsm, move to ~/.config/uwsm/env

source = $hypr_conf/env_vars.conf


###################
### PERMISSIONS ###
###################

# See https://wiki.hypr.land/Configuring/Permissions/
# Please note permission changes here require a Hyprland restart and are not applied on-the-fly
# for security reasons

# ecosystem {
#   enforce_permissions = 1
# }

# permission = /usr/(bin|local/bin)/grim, screencopy, allow
# permission = /usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland, screencopy, allow
# permission = /usr/(bin|local/bin)/hyprpm, plugin, allow


#####################
### LOOK AND FEEL ###
#####################

source = $hypr_conf/looks.conf

#############
### INPUT ###
#############

source = $hypr_conf/input.conf

###################
### KEYBINDINGS ###
###################

# See https://wiki.hypr.land/Configuring/Binds/ for more

source = $hypr_conf/keybinds.conf

##############################
### WINDOWS AND WORKSPACES ###
##############################

# See https://wiki.hypr.land/Configuring/Window-Rules/ for more
# See https://wiki.hypr.land/Configuring/Workspace-Rules/ for workspace rules

# Ignore maximize requests from apps. You'll probably like this.
windowrule = suppress_event maximize, match:class .*

# Fix some dragging issues with XWayland
windowrule = no_focus on, match:class ^$, match:title ^$, match:xwayland 1, match:float 1, match:fullscreen 0, match:pin 0

###############
### PLUGINS ###
###############

source = $hypr_conf/plugins.conf

