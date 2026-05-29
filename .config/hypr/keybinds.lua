-- See https://wiki.hypr.land/Configuring/Binds/ for more

-- See https://wiki.hypr.land/Configuring/Keywords/
local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local lmb     = "mouse:272" -- Sets the left mouse button
local rmb     = "mouse:273" -- Sets the right mouse button

-- Example binds, see https://wiki.hypr.land/Configuring/Binds/ for more
hl.bind(mainMod .. " + T",            hl.dsp.exec_cmd(terminal))
hl.bind(           "ALT + F4",        hl.dsp.window.close())
hl.bind(mainMod .. " + M",            hl.dsp.exit(), { long_press = true }) -- Kills Hyprland session when held
hl.bind(mainMod .. " + E",            hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V",            hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R",            hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + F",            hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mainMod .. " + P",            hl.dsp.window.pseudo({ action = "toggle" })) -- dwindle
hl.bind(mainMod .. " + J",            hl.dsp.layout("togglesplit")) -- dwindle
hl.bind(mainMod .. " + K",            hl.dsp.layout("swapsplit")) -- dwindle
hl.bind(mainMod .. " + L",            hl.dsp.exec_cmd("hyprlock"), { long_press = true })

-- Move focus with mainMod + vim motion keys
hl.bind(mainMod .. " + ALT + H",     hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + ALT + L",     hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + ALT + K",     hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + ALT + J",     hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
hl.bind(mainMod .. " + 1",           hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2",           hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3",           hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4",           hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5",           hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6",           hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7",           hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8",           hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9",           hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + 0",           hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind(mainMod .. " + SHIFT + 1",  hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + 2",  hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + 3",  hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + 4",  hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + 5",  hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + 6",  hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + 7",  hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + 8",  hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + 9",  hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + 0",  hl.dsp.window.move({ workspace = 10 }))

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",          hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S",  hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + CTRL + L",   hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + CTRL + H",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows
hl.bind(mainMod .. " + " .. lmb,    hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + " .. rmb,    hl.dsp.window.resize(), { mouse = true })

-- Volume/Sound
hl.bind(           "XF86AudioRaiseVolume",  hl.dsp.exec_cmd("~/.config/hypr/scripts/volume --inc"), { repeating = true, locked = true })
hl.bind(           "XF86AudioLowerVolume",  hl.dsp.exec_cmd("~/.config/hypr/scripts/volume --dec"), { repeating = true, locked = true })
hl.bind(           "XF86AudioMicMute",      hl.dsp.exec_cmd("~/.config/hypr/scripts/volume --toggle-mic"), { repeating = true, locked = true })
hl.bind(           "XF86AudioMute",         hl.dsp.exec_cmd("~/.config/hypr/scripts/volume --toggle"), { repeating = true, locked = true })

-- Screen brightness
hl.bind(           "XF86MonBrightnessUp",   hl.dsp.exec_cmd("~/.config/hypr/scripts/backlight --inc"), { repeating = true, locked = true })
hl.bind(           "XF86MonBrightnessDown", hl.dsp.exec_cmd("~/.config/hypr/scripts/backlight --dec"), { repeating = true, locked = true })

-- Requires playerctl
hl.bind(           "XF86AudioNext",         hl.dsp.exec_cmd("playerctl next"), { locked = true  })
hl.bind(           "XF86AudioPause",        hl.dsp.exec_cmd("playerctl play-pause"), { locked = true  })
hl.bind(           "XF86AudioPlay",         hl.dsp.exec_cmd("playerctl play-pause"), { locked = true  })
hl.bind(           "XF86AudioPrev",         hl.dsp.exec_cmd("playerctl previous"), { locked = true  })

