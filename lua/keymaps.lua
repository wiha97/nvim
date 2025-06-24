local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local function setmap(modes, map, action)
  vim.keymap.set(modes, map, action, opts)
end
--  Clear search highlight
vim.keymap.set("n", "<leader>cs", ":nohlsearch<CR>", {})

--  Autoformat
vim.keymap.set("n", "<leader>p", ":%!jq<cr>", {})

-- vim.keymap.set({"n", "i"}, "<S-k>", "<C-c>:%s//&\r<CR", {})
-- vim.keymap.set({"n", "v"}, "<S-k>", ":s/ /\r/g", {})
-- vim.keymap.set({"n", "v"}, "<S-k>", ":s/", {})

--#region DeepSeek provided
-- Define a function that will capture the selected text and perform the substitution
local function split_line_at_char()
  -- Get the currently selected text
  local visual_start = vim.fn.getpos("'<")
  local visual_end = vim.fn.getpos("'>")
  
  -- Extract the character to look for from the first line of the selection
  local char = vim.fn.nr2char(vim.fn.getchar())

  -- Use 'silent' to avoid showing the search command in the status line
  vim.cmd('silent /' .. char)
  
  -- Perform the substitution based on what was found
  for lnum = visual_start[2], visual_end[2] do
    local current_line = vim.fn.getline(lnum)
    if string.find(current_line, char, 1, true) then
      vim.cmd(':' .. lnum .. 's/\\v[' .. char .. ']+/' .. char .. '\\r/g')
    end
  end
end

-- Map the function to a key sequence in visual mode, e.g., <Leader>s
vim.api.nvim_set_keymap('v', '<leader>s', '', { callback = split_line_at_char, desc = 'Split line at selected character' })
--#endregion DeepSeek

-- Toggle Neotree
vim.keymap.set({ "n", "i" }, "<C-e>", "<C-c>:Neotree toggle left<CR>", { silent = true })
vim.keymap.set({ "n", "i" }, "<A-e>", "<C-c>:Neotree toggle right<CR>", { silent = true })

--  BarBar

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
map('n', '<A-x>', '<Cmd>BufferClose<CR>', opts)

-- Split
map('n', '<leader>s', '<Cmd>vsplit<CR><C-w>w', opts)
map('n', '<A-l>', '<Cmd>vertical resize +5<CR>', opts)
map('n', '<A-h>', '<Cmd>vertical resize -5<CR>', opts)



--  Gitsigns
vim.keymap.set({'n', 'i'}, '<C-g>', '<Cmd>Gitsigns preview_hunk<CR>', opts)

-- LSP info
-- "neovim/nvim-lspconfig",
vim.keymap.set({ "n" }, "<leader>i", vim.lsp.buf.hover, {})
vim.keymap.set({ "n" }, "<leader>r", vim.lsp.buf.references, {})
vim.keymap.set("n", "gD", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
-- vim.keymap.set("n", "<leader>I", vim.lsp.buf.implementation(),{})

--  Comment toggle
vim.cmd("map <leader>cc gcc<CR>")
--  Clear word, set in insert
vim.cmd("nmap <C-x> caw")
vim.keymap.set("i", "<C-x>", "<cmd>norm diwli<CR>", { silent = true })

-- Del replace
-- vim.keymap.set({"n", "i"}, "<A-d>", "<C-c>@ra", {})
vim.keymap.set("n","<S-r>","*<S-n>cgn",{})

--  Quit
vim.keymap.set({ "n", "i", "v" }, "<C-q>", "<C-c>:q<CR>", {})
vim.keymap.set({ "n", "i", "v" }, "<C-A-q>", "<C-c>:q!<CR>", {})

-- New
vim.keymap.set("n", "<A-n>", ":rightbelow vnew<CR>", opts)

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
vim.keymap.set("i", "<A-S-s>", "<C-c><S-g>", {})
