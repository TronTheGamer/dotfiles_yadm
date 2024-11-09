-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "kanagawabones"
config = { -- Basic Appearance
	automatically_reload_config = true,
	font = wezterm.font("JetBrains Mono", { weight = "Medium" }),
	font_size = 14,
	color_scheme = "tokyonight",
	-- color_scheme = "kanagawa (Gogh)",
}

config.keys = {
	{ -- Split Pane Vertically
		key = "v",
		mods = "ALT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{ -- Split Pane Horizontally
		key = "h",
		mods = "ALT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{ -- close current pane
		key = "w",
		mods = "ALT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{ -- Fullscreen
		key = "f",
		mods = "ALT|SHIFT",
		action = wezterm.action.ToggleFullScreen,
	},
}
-- and finally, return the configuration to wezterm
return config
