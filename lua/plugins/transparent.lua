return {
	"xiyaowong/transparent.nvim",
	config = function()
		-- Optional, you don't have to run setup.
		local transparent = require("transparent")

		-- transparent.clear_prefix("Buffer")
		transparent.clear_prefix("NeoTree")
		transparent.clear_prefix("lualine")
		transparent.setup({
			-- table: default groups
			groups = {
				"Normal",
				"NormalNC",
				"Comment",
				"Constant",
				"Special",
				"Identifier",
				"Statement",
				"PreProc",
				"Type",
				"Underlined",
				"Todo",
				"String",
				"Function",
				"Conditional",
				"Repeat",
				"Operator",
				"Structure",
				"LineNr",
				"NonText",
				"SignColumn",
				"CursorLine",
				"CursorLineNr",
				"StatusLine",
				"StatusLineNC",
				"EndOfBuffer",
			},
			extra_groups = {
        "TabLine",
        "TabLineFill",
        "Buffer",
        "BufferTabpageFill",
        "BufferTabpages",
        "BufferTabpagesSep",
        "BufferCurrent",
        -- "BufferVisible",
        "BufferInactive",
				-- "NeoTreeNormal",
				-- "NeoTreeNormalNC",
				-- "NvimTreeNormal",
				-- "NeoTreeWinSeparator",
			},
			exclude_groups = {

      },
        -- "BufferActiveBtn",
        -- "Current",
			-- function: code to be executed after highlight groups are cleared
			-- Also the user event "TransparentClear" will be triggered
			on_clear = function() end,
		})
		vim.keymap.set("n", "<C-t>", ":TransparentToggle<CR>", {})
	end,
}
