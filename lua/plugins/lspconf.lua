return {
  {
    "williamboman/mason.nvim",
    config = function()
        require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "jdtls"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspc = require("lspconfig")

      lspc.lua_ls.setup({
        capabilities = capabilities
      })
      lspc.jdtls.setup({
        capabilities = capabilities
      })
      vim.keymap.set('n', 'I', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gD', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
