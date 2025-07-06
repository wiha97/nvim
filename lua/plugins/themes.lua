return {
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
    name = "gruvbox-material",
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
  {
    "joshdick/onedark.vim",
  },
  {
    "KeitaNakamura/neodark.vim",
  },
  {
    "tomasiser/vim-code-dark",
  },
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000,
  },
  {
    "vague2k/vague.nvim"
  },
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          "catppuccin",
          "codedark",
          "gruvbox-material",
          "solarized-osaka",
          "everforest",
          "tokyonight",
          "nightfly",
          "nightfox",
          "kanagawa-wave",
          "onedark",
          "neodark",
          "vague"
        },
        -- your list of installed colorschemes.
        livepreview = true, -- apply theme while picking. default to true.
      })
    end,
  },
}
