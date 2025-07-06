-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config = {
	default_prog = { "zsh" },
	font = wezterm.font_with_fallback({
		-- { family = "JetBrains Mono", weight = "Medium" },
		{ family = "DankMono Nerd Font",    weight = "Bold" },
		{ family = "Symbols NerdFont Mono", scale = 0.75 },
	}),
	font_rules = {
		{
			intensity = "Bold",
			italic = false,
			-- font = wezterm.font({ family = "JetBrains Mono", weight = "Bold" }),
			font = wezterm.font({ family = "DankMono Nerd Font Mono", weight = "Bold" }),
		},
	},
	freetype_load_target = "Normal",
	-- font = wezterm.font("Hack Nerd Font Propo", { weight = "Bold" }),
	-- font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	--config.font = wezterm.font("MesloLGS Nerd Font Mono")
	font_size = 19,
	line_height = 1.05,
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
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	automatically_reload_config = true,
	background = {
		{
			source = {
				-- File = "Users/moonlander/dotfiles/assets/image2.png",
				Color = "#011526",
			},
			-- hsb = {
			--   hue = 1.0,
			--   saturation = 0.8,
			--   brightness = 0.7,
			-- },
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
