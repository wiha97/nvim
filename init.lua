-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- vim.keymap.set('n', '<C-c>', 'gcc', {})
-- vim.keymap.set("n", "<C-A-d>", ':echo "Ctrl+Alt+d pressed"<CR>', { noremap = true, silent = true })
-- vim.keymap.set("n", '<C-n>', )

require("vimopts")
require("keymaps")
require("lazy").setup("plugins")
-- require("solarized-osaka").setup()
-- vim.cmd.colorscheme("solarized-osaka")
vim.cmd.colorscheme("catppuccin")
vim.cmd("set guicursor=n-v-c:hor20,i-ci-ve:ver25,r-cr:block,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175")
