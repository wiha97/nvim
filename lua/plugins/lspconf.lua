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
      local insArr = {
          "lua_ls",
      }
      if cmdExists("npm") then
        table.insert(insArr, "yamlls")
        table.insert(insArr, "bashls")
        table.insert(insArr, "html")
      end
      if cmdExists("go") then
        table.insert(insArr, "hyprls")
      end
      if cmdExists("javac") then
        table.insert(insArr, "jdtls")
      end

      require("mason-lspconfig").setup({
        ensure_installed= insArr,
        -- ensure_installed = {
        --   "lua_ls",
        --   "jdtls",
        --   "hyprls",
        --   "yamlls",
        --   "bashls",
        --   "html",
        -- },
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
      local caps = require("cmp_nvim_lsp").default_capabilities()
      local lspc = require("lspconfig")
      local mason = require("mason-lspconfig")

      mason.setup({
        function(server_name)
          lspc[server_name].setup({
            capabilities = caps,
          })
        end,
        lspc.ts_ls.setup({
          capabilities = caps,
          filetypes = { "typescript", "javascript", "js"},
          root_dir = function() return vim.loop.cwd() end
        }),

        lspc.bashls.setup({
          capabilities = caps,
          cmd = { "bash-language-server", "start" },
          filetypes = { "sh", "zsh", "bash" },
        }),
        lspc.omnisharp.setup({
          capabilities = caps,
          cmd = { "dotnet", vim.fn.stdpath("data") .. "/mason/packages/omnisharp/libexec/OmniSharp.dll" },
          enable_import_completion = true,
          organize_imports_on_format = true,
          enable_roslyn_analyzers = true,
          root_dir = function()
            return vim.loop.cwd() -- current working directory
          end,
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
