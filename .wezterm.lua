local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 19

config.color_scheme = "Gogh (Gogh)"

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

return config
