return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		opts = {
			transparent_background = false,
			term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = true, -- dims the background color of inactive window
				-- shade = "light",
				shade = "dark",
				percentage = 0.25, -- percentage of the shade to apply to the inactive window
			},
			flavour = "latte",
			integrations = {
				aerial = true,
				alpha = true,
				cmp = true,
				dashboard = true,
				flash = true,
				gitsigns = true,
				headlines = true,
				illuminate = true,
				-- indent_blankline = {
				-- 	enabled = true,
				-- 	scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
				-- 	colored_indent_levels = true,
				-- },
				leap = true,
				lsp_trouble = true,
				mason = true,
				markdown = true,
				mini = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
				navic = { enabled = true, custom_bg = "lualine" },
				neotest = true,
				neotree = true,
				noice = true,
				notify = true,
				nvimtree = true,
				semantic_tokens = true,
				telescope = true,
				treesitter = true,
				treesitter_context = true,
				which_key = true,
			},
			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = { "italic" }, -- Change the style of comments
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = { "bold" },
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = { "italic" },
				types = {},
				operators = {},
			},
			color_overrides = {
				latte = {
					base = "#ffffff",
					NvimTreeNormal = { fg = "#ffffff", bg = "#ffffff" },
				},
			},
			custom_highlights = {
        -- light mode
				Visual = { bg = "#FFd801", style = { "bold" } }, -- light mode
				CursorColumn = { bg = "#e6e6e6" },
        CursorLine = { bg = "#e6e6e6" }, -- light mode
				NvimTreeNormalFloat = { fg = "#000000", bg = "#ffffff" },
				-- Visual = { bg = "#FFd801", style = { "bold" } }, -- light mode
				-- CursorColumn = { bg = "#000000" },
				--     CursorLine = { bg = "#000000" }, -- light mode
				-- NvimTreeNormalFloat = { fg = "#000000", bg = "#ffffff" },
			},
			show_end_of_buffer = true,
		},
	},
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			-- Your config here
			require("everforest").setup({
				---Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
				---Default is "medium".
				background = "hard",
				---How much of the background should be transparent. 2 will have more UI
				---components be transparent (e.g. status line background)
				transparent_background_level = 0,
				---Whether italics should be used for keywords and more.
				italics = true,
				---Disable italic fonts for comments. Comments are in italics by default, set
				---this to `true` to make them _not_ italic!
				disable_italic_comments = false,
				---By default, the colour of the sign column background is the same as the as normal text
				---background, but you can use a grey background by setting this to `"grey"`.
				sign_column_background = "none",
				---The contrast of line numbers, indent lines, etc. Options are `"high"` or
				---`"low"` (default).
				ui_contrast = "low",
				---Dim inactive windows. Only works in Neovim. Can look a bit weird with Telescope.
				---
				---When this option is used in conjunction with show_eob set to `false`, the
				---end of the buffer will only be hidden inside the active window. Inside
				---inactive windows, the end of buffer filler characters will be visible in
				---dimmed symbols. This is due to the way Vim and Neovim handle `EndOfBuffer`.
				dim_inactive_windows = true,
				---Some plugins support highlighting error/warning/info/hint texts, by
				---default these texts are only underlined, but you can use this option to
				---also highlight the background of them.
				diagnostic_text_highlight = true,
				---Which colour the diagnostic text should be. Options are `"grey"` or `"coloured"` (default)
				diagnostic_virtual_text = "coloured",
				---Some plugins support highlighting error/warning/info/hint lines, but this
				---feature is disabled by default in this colour scheme.
				diagnostic_line_highlight = false,
				---By default, this color scheme won't colour the foreground of |spell|, instead
				---colored under curls will be used. If you also want to colour the foreground,
				---set this option to `true`.
				spell_foreground = false,
				---Whether to show the EndOfBuffer highlight.
				show_eob = true,
				---Style used to make floating windows stand out from other windows. `"bright"`
				---makes the background of these windows lighter than |hl-Normal|, whereas
				---`"dim"` makes it darker.
				---
				---Floating windows include for instance diagnostic pop-ups, scrollable
				---documentation windows from completion engines, overlay windows from
				---installers, etc.
				---
				---NB: This is only significant for dark backgrounds as the light palettes
				---have the same colour for both values in the switch.
				float_style = "bright",
				---Inlay hints are special markers that are displayed inline with the code to
				---provide you with additional information. You can use this option to customize
				---the background color of inlay hints.
				---
				---Options are `"none"` or `"dimmed"`.
				inlay_hints_background = "none",
				---You can override specific highlights to use other groups or a hex colour.
				---This function will be called with the highlights and colour palette tables.
				---@param highlight_groups Highlights
				---@param palette Palette
				on_highlights = function(highlight_groups, palette) end,
				---You can override colours in the palette to use different hex colours.
				---This function will be called once the base and background colours have
				---been mixed on the palette.
				---@param palette Palette
				colours_override = function(palette) end,
			})
		end,
	},
	-- {
	-- 	"navarasu/onedark.nvim",
	-- },
	{
		"morhetz/gruvbox",
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			plugins = {
				auto = true,
			},
		},
	},
	{
		"sonph/onehalf",
		rtp = "vim",
		lazy = false,
		priority = 1000,
	},
	{
		"NLKNguyen/papercolor-theme",
	},
	{
		"projekt0n/github-nvim-theme",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		-- config = function()
		-- 	require("github-theme").setup({
		-- 		-- ...
		-- 	})
		--
		-- 	vim.cmd("colorscheme github_dark")
		-- end,
	},
}
