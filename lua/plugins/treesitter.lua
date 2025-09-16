return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local conf = require("nvim-treesitter.configs")
    conf.setup({
      ensure_installed = { "lua", "java","javascript", "yaml", "html", "css", "markdown", "bash", "dockerfile" },
      indent = { enable = true },
      highlight = { enable = true },
    })
    vim.filetype.add({
      pattern = {
        [".*/hypr/.*%.conf"] = "hyprlang",
        [".*.zsh"] = "bash"
      },
    })
  end,
}
