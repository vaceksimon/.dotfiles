hl.config({
    plugin = {
        hyprbars = {
						-- https://github.com/hyprwm/hyprland-plugins/tree/main/hyprbars

						-- example config
            bar_height = 20,
            on_double_click = "hyprctl dispatch 'hl.dsp.window.fullscreen({ mode = \"fullscreen\", action = \"toggle\" })'"
        }
    }
})

-- example buttons (R -> L)
-- hyprbars-button = color, size, on-click
hl.plugin.hyprbars.add_button({
		bg_color = "rgb(ff4040)",
		fg_color = "rgb(ffffff)",
		size = 10,
		icon = "X",
		action = "hyprctl dispatch 'hl.dsp.window.close()'",
})

hl.plugin.hyprbars.add_button({
		bg_color = "rgb(eeee11)",
		fg_color = "rgb(000000)",
		size = 10,
		icon = "_",
		action = "hyprctl dispatch 'hl.dsp.window.fullscreen({ mode = \"fullscreen\", action = \"toggle\" })'"
})

hl.window_rule({
  name = "hyprbar-app-exceptions",
  match = {
    class = "brave-browser|firefox|code-oss|obsidian|discord"
  },
	['hyprbars:no_bar'] = true
})

