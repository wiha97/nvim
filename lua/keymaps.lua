--  Clear search highlight
vim.keymap.set("n", "<leader>cs", ":nohlsearch<CR>", {})

--  Autoformat
vim.keymap.set("n", "<leader>p", ":%!jq<cr>", {})

vim.keymap.set({"n", "i"}, "<S-k>", "<C-c>:%s//&\r<CR>", {})

-- vim.keymap.set("n", "<S-k>", "<Cmd>%s/ /\r/<CR>", {})

-- Toggle Neotree
vim.keymap.set({ "n", "i" }, "<C-e>", "<C-c>:Neotree toggle left<CR>", { silent = true })
vim.keymap.set({ "n", "i" }, "<A-e>", "<C-c>:Neotree toggle right<CR>", { silent = true })

--  BarBar
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)


--  Gitsigns
vim.keymap.set({'n', 'i'}, '<C-g>', '<Cmd>Gitsigns preview_hunk<CR>', opts)



-- Toggle NvimTree
-- vim.keymap.set({ "n", "i" }, "<A-e>", "<C-c>:NvimTreeToggle<CR>", { silent = true })

-- LSP info
-- "neovim/nvim-lspconfig",
vim.keymap.set({ "n", "i" }, "<A><A>", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gD", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- Selection copy to system buffer <3
-- vim.cmd("set mouse=a")
-- vim.cmd('vmap <LeftRelease> "*ygv')

--  Comment toggle
vim.cmd("map <leader>cc gcc")
--  Clear word, set in insert
vim.cmd("nmap <C-x> caw")
vim.keymap.set("i", "<C-x>", "<cmd>norm diwli<CR>", { silent = true })

--  Quit
vim.keymap.set({ "n", "i", "v" }, "<C-q>", "<C-c>:q<CR>", {})
vim.keymap.set({ "n", "i", "v" }, "<C-A-q>", "<C-c>:q!<CR>", {})

--  Save
vim.keymap.set({ "n", "i" }, "<C-s>", "<C-c>:w<CR>", {})
--  Save new
vim.keymap.set({ "n", "i" }, "<C-S-s>", "<C-c>:w", {})

--  End-of-line
vim.cmd("nmap <A-S-d> $a")
vim.keymap.set({ "i" }, "<A-S-d>", "<cmd>norm $a<CR>", { })

--  Start-of-line
vim.cmd("nmap <A-S-a> 0a")
vim.keymap.set({ "i" }, "<A-S-a>", "<cmd>norm 0i<CR>", { })

--  Start-of-file
vim.cmd("nmap <A-S-w> goi")
vim.keymap.set("i", "<A-S-w>", "<cmd>norm goi<CR>", {})

--  End-of-file
vim.cmd("nmap <A-S-s> <S-g>i")
vim.keymap.set("i", "<A-S-s>", "<C-c><S-g>i", {})
