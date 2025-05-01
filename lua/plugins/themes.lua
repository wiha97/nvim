return {
	{
		"zaldih/themery.nvim",
		lazy = false,
		config = function()
			require("themery").setup({
				themes = {
					"catppuccin",
					"gruvbox-material",
					"solarized-osaka",
					"everforest",
					"tokyonight",
					"nightfox",
					"kanagawa-wave",
				},
				-- your list of installed colorschemes.
				livepreview = true, -- apply theme while picking. default to true.
			})
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"sainnhe/gruvbox-material",
		name = "gruvbox",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_enable_italic = true
		end,
	},
	{
		"sainnhe/everforest",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.everforest_enable_italic = true
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		name = "nightfox",
	},
	{
		"rebelot/kanagawa.nvim",
	},
}
