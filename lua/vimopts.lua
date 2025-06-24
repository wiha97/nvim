vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.number = true
vim.wo.relativenumber = true

-- Wholeword linebreak
vim.opt.wrap = true
vim.opt.linebreak = true

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
-- Diagnostics
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
})
-- vim.api.nvim_create_autocmd({ "CursorHold" }, {
--     pattern = "*",
--     callback = function()
--         for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
--             if vim.api.nvim_win_get_config(winid).zindex then
--                 return
--             end
--         end
--         vim.diagnostic.open_float({
--             scope = "cursor",
--             focusable = false,
--             close_events = {
--                 "CursorMoved",
--                 "CursorMovedI",
--                 "BufHidden",
--                 "InsertCharPre",
--                 "WinLeave",
--             },
--         })
--     end
-- })

-- vim.cmd([[
vim.cmd("highlight BufferCurrent guibg=#282828 guifg=#ffffff") -- Change #282828 to your desired opaque color
vim.cmd("highlight BufferCurrentIndex guibg=#282828 guifg=#ffffff")
vim.cmd("highlight BufferCurrentMod guibg=#282828 guifg=#ffffff")
-- ]])

