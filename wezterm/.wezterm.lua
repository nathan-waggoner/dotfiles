local wezterm = require("wezterm")
local config = wezterm.config_builder()
local appearance = wezterm.gui.get_appearance()

if appearance:find("Dark") then
	config.color_scheme = "GruvboxDark"
else
	config.color_scheme = "Gruvbox light, medium (base16)"
end

config.hide_tab_bar_if_only_one_tab = true

return config
