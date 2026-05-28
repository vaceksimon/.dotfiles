-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/

local home = os.getenv("HOME")
local hypr_conf = home .. "/.config/hypr"


-------------------------------------
-- DEBUG OUTPUT IN CASE OF TROUBLE --
-------------------------------------

--debug {
--	disable_logs = false
--}


-------------------
--- MY PROGRAMS ---
-------------------

-- See https://wiki.hypr.land/Configuring/Keywords/

-- Set programs that you use
terminal = "kitty"
fileManager = "dolphin"
menu = 'rofi -show combi -combi-modes "drun" -modes combi'


-----------------
--- AUTOSTART ---
-----------------

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function ()
--  hl.exec_cmd(terminal)
--  hl.exec_cmd("nm-applet &")
  hl.exec_cmd("waybar")
  hl.exec_cmd("hyprpaper & " .. hypr_conf .. "/scripts/wallpaper")
  hl.exec_cmd("hyprpm reload -n")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  hl.exec_cmd("nm-applet")
  hl.exec_cmd("wl-paste --watch cliphist store")
end)

----------------
--- MONITORS ---
----------------

-- See https://wiki.hypr.land/Configuring/Monitors/

require("monitors")


-----------------------------
--- ENVIRONMENT VARIABLES ---
-----------------------------

-- See https://wiki.hypr.land/Configuring/Environment-variables/
-- TODO if using uwsm, move to ~/.config/uwsm/env

require("env_vars")


-------------------
--- PERMISSIONS ---
-------------------

-- See https://wiki.hypr.land/Configuring/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

-- ecosystem {
--   enforce_permissions = 1
-- }

-- permission = /usr/(bin|local/bin)/grim, screencopy, allow
-- permission = /usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland, screencopy, allow
-- permission = /usr/(bin|local/bin)/hyprpm, plugin, allow


---------------------
--- LOOK AND FEEL ---
---------------------

require("looks")

-------------
--- INPUT ---
-------------

require("input")

-------------------
--- KEYBINDINGS ---
-------------------

-- See https://wiki.hypr.land/Configuring/Binds/ for more

require("keybinds")

------------------------------
--- WINDOWS AND WORKSPACES ---
------------------------------

-- See https://wiki.hypr.land/Configuring/Window-Rules/ for more
-- See https://wiki.hypr.land/Configuring/Workspace-Rules/ for workspace rules

-- Ignore maximize requests from apps. You'll probably like this.
hl.window_rule({
  name = "suppress-maximize-events",
  match = {
    class = ".*"
  },
  suppress_event = "maximize"
})



-- Fix some dragging issues with XWayland
hl.window_rule({
  name = "fix-some-dragging-issues-with-XWayland",
  match = {
    class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false
  },
  no_focus = true
})

---------------
--- PLUGINS ---
---------------

require("plugins")

