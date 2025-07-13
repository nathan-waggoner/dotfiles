local wezterm = require("wezterm")
local config = wezterm.config_builder()
local appearance = wezterm.gui.get_appearance()

if appearance:find("Dark") then
	config.color_scheme = "nightfox"
else
	config.color_scheme = "dayfox"
end

config.hide_tab_bar_if_only_one_tab = true

return config
