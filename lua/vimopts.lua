vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.number = true
vim.wo.relativenumber = true

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


