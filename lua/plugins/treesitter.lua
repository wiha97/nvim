return { 
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
        local conf = require("nvim-treesitter.configs")
        conf.setup({
            ensure_installed = { "lua", "java" },
            indent = { enable = true },
            highlight = { enable = true },
        })
    end
}

