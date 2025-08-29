vim.api.nvim_create_autocmd("FileType", {
	pattern = "java,cs,razor",
	command = "setlocal shiftwidth=4 tabstop=4"
})
