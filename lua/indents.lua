vim.api.nvim_create_autocmd("FileType", {
	pattern = "java,cs",
	command = "setlocal shiftwidth=4 tabstop=4"
})
