return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local conf = require("nvim-treesitter.configs")
    conf.setup({
      ensure_installed = { "lua", "java", "yaml", "html", "css", "markdown", "bash", "dockerfile" },
      indent = { enable = true },
      highlight = { enable = true },
    })
    vim.filetype.add({
      pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
    })
  end,
}
