return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
      },
    }
  },
  config = function()
    require("neo-tree").setup({
      event_handlers = {
        {
          event = "file_open_requested",
          handler = function()
            vim.cmd("Neotree close")
          end,
        },
      },
    })
  end,
}
