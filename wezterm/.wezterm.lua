local wezterm = require("wezterm")
local config = wezterm.config_builder()
local appearance = ""

if wezterm.gui.get_appearance():find("Dark") then
	appearance = "dark"
	config.color_scheme = "nightfox"
else
	appearance = "light"
	config.color_scheme = "dayfox"
end

if wezterm.GLOBAL.appearance ~= appearance then
	wezterm.GLOBAL.appearance = appearance
	wezterm.background_child_process({ "/bin/zsh", "-c", "/opt/homebrew/bin/tmux source-file ~/.tmux.conf" })
end
config.hide_tab_bar_if_only_one_tab = true

return config
