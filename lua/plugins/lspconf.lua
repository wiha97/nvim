return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "jdtls",
          "hyprls",
          "yamlls",
          "bashls",
          "harper_ls",
          "html",
        },
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspc = require("lspconfig")
      local mason = require("mason-lspconfig")

      mason.setup_handlers({
        function(server_name)
          lspc[server_name].setup({
            capabilities = capabilities,
          })
        end,

        lspc.bashls.setup({
          capabilities = capabilities,
          filetypes = { "sh", "zsh", "bash" }
        }),
        lspc.lua_ls.setup({
          capabilities = capabilities,
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                library = {
                  [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                  [vim.fn.stdpath("config") .. "/lua"] = true,
                },
              },
            },
          },
        }),
        -- lspc.jdtls.setup({
        --   capabilities = capabilities,
        -- })
        -- lspc.hyprls.setup({
        --   capabilities = capabilities,
        -- })
        -- lspc.yamlls.setup({
        --   capabilities = capabilities,
        -- })
        -- lspc.harper_ls.setup({
        --   capabilities = capabilities,
        -- })
      })
    end,
  },
}
