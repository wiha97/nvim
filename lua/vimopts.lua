vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.number = true
vim.wo.relativenumber = true

-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = {"java", "cs"},
-- 	callback = function()
--     vim.cmd("set tabstop=4")
--     vim.cmd("set tabstop=4")
-- 		-- vim.opt_local.shiftwidth = 4
-- 		-- vim.opt_local.tabstop = 4
-- 	end
-- })

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function ()
    vim.cmd("Gitsign toggle_current_line_blame")
  end
})

--  Selection copy <3
vim.api.nvim_create_autocmd("CursorMoved", {
  desc = "Keep * synced with selection",
  callback = function()
    local mode = vim.fn.mode(false)
    if mode == "v" or mode == "V" or mode == "\22" then
      vim.cmd([[silent norm "*ygv]])
    end
  end,
})


