return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim"
    },
    opts = {
        filesystem = {
            filtered_items = {
                visible = false,
                hide_dotfiles = false,
            },
        },
    },
    -- config = function()
    -- end
}

