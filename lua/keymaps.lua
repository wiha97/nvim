--  Clear search highlight
vim.keymap.set("n", "<leader>cs", ":nohlsearch<CR>", {})

-- Toggle Neotree
vim.keymap.set({ "n", "i" }, "<C-e>", "<C-c>:Neotree toggle left<CR>", { silent = true })
vim.keymap.set({ "n", "i" }, "<A-e>", "<C-c>:Neotree toggle right<CR>", { silent = true })

-- LSP info
-- "neovim/nvim-lspconfig",
vim.keymap.set({"n", "i"}, "<A-d>", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gD", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
