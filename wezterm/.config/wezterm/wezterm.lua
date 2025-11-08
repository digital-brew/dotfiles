-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = {}
local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
custom.background = "#011526"

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config = {
	default_prog = { "zsh" },
	font = wezterm.font_with_fallback({
		-- { family = "JetBrainsMono Nerd Font" },
		-- { family = "FiraMono Nerd Font" },
		{ family = "Maple Mono" },
		-- { family = "Geist Mono" },
		-- { family = "Monaspace Neon"},
		-- { family = "Hack Nerd Font Propo" },
		-- { family = "Dank Mono" },
		-- { family = "SF Mono",    weight = "Medium" },
		-- { family = "Anka/Coder",    weight = "Bold" },
		-- { family = "Anonymous Pro",    weight = "Bold" },
		{ family = "Symbols NerdFont Mono", scale = 0.75 },
	}),
	font_rules = {
		-- {
		-- 	font = wezterm.font("Dank Mono", {
		-- 		bold = true,
		-- 	}),
		-- },
		-- {
		-- 	font = wezterm.font("Monaspace Neon", {
		-- 		bold = false,
		-- 		italic = false,
		-- 	}),
		-- },
		{
			-- 	intensity = "Bold",
			-- 	italic = false,
			-- font = wezterm.font({ family = "Hack Nerd Font Propo", weight = "Bold" }),
			-- font = wezterm.font({ family = "Monaspace Neon", weight = "Medium" }),
			-- font = wezterm.font({ family = "JetBrainsMono Nerd Font", weight = "Bold" }),
			font = wezterm.font({ family = "Maple Mono", weight = "Medium" }),
			-- font = wezterm.font({ family = "Geist Mono", weight = "Medium" }),
			-- font = wezterm.font({ family = "FiraMono Nerd Font", weight = "Medium" }),
			-- font = wezterm.font({ family = "Dank Mono", weight = "Bold" }),
			-- 	font = wezterm.font({ family = "SF Mono" }),
				-- font = wezterm.font({ family = "Anka/Coder", weight = "Bold" }),
				-- font = wezterm.font({ family = "Anonymous Pro", weight = "Bold" }),
		},
	},
	freetype_load_target = "Normal",
	-- font = wezterm.font("Hack Nerd Font Propo", { weight = "Bold" }),
	-- font = wezterm.font("JetBrain Mono", { weight = "Bold" }),
	--config.font = wezterm.font("MesloLGS Nerd Font Mono")
	font_size = 18,
	line_height = 1.06,
	freetype_load_flags = "NO_HINTING",

	-- enable_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,

	window_decorations = "RESIZE",

	--window_padding = {
	--  left = 12,
	--  right = 4,
	--  top = 12,
	--  bottom = 12,
	--},

	window_padding = {
		left = 8,
		right = 3,
		top = 1,
		bottom = '0%',
	},

	automatically_reload_config = true,
	background = {
		{
			source = {
				-- File = "Users/moonlander/dotfiles/assets/image2.png",
				Color = "#011526",
				-- Color = "#03111e",
				-- Color = "#00141a",
			},
			-- hsb = {
			--   hue = 1.0,
			--   saturation = 0.8,
			--   brightness = 0.7,
			-- },
			-- opacity = 0.97,
			width = "100%",
			height = "100%",
		},
		-- {
		--   source = {
		--     Color = "#011526",
		--   },
		--   width = "100%",
		--   height = "100%",
		--   opacity = 0.8,
		-- },
	},
	-- macos_window_background_blur = 10,

	color_scheme = "Cattpuccin Mocha",
	-- colors = {
	-- 	foreground = "#CBE0F0",
	-- 	-- background = "#011423",
	-- 	cursor_bg = "#47FF9C",
	-- 	cursor_border = "#47FF9C",
	-- 	cursor_fg = "#011423",
	-- 	selection_bg = "#033259",
	-- 	selection_fg = "#CBE0F0",
	-- 	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	-- 	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
	-- },

	-- Miscellaneous settings
	max_fps = 120,
	prefer_egl = true,
}

-- and finally, return the configuration to wezterm
return config
