return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>f", builtin.find_files, {})
			vim.keymap.set("n", "<C-f>", builtin.live_grep, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			-- This is your opts table
			local scope = require("telescope");
      local actions = scope.actions;

      scope.setup({
				pickers = {
					find_files = {
						hidden = true,
						follow = true,
            -- theme = "dropdown",
					},
				},
				defaults = {
          path_display = {
            shorten = 3,
            truncate = 2
          },
          layout_strategy = 'flex',
          layout_config = {
            vertical = {
              preview_height = 0.7,
              width = 0.8,
              height = 0.95
            },
            horizontal = {
              -- prompt_position = "top"
              width = 0.95,
              height = 0.95,
              -- preview_width = 0.4
            },
          },
          -- layout_config = {
          --   vertical = { width = 0.8 }
          -- },
					file_ignore_patterns = {
						".git/",
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),

						-- pseudo code / specification for writing custom displays, like the one
						-- for "codeactions"
						-- specific_opts = {
						--   [kind] = {
						--     make_indexed = function(items) -> indexed_items, width,
						--     make_displayer = function(widths) -> displayer
						--     make_display = function(displayer) -> function(e)
						--     make_ordinal = function(e) -> string
						--   },
						--   -- for example to disable the custom builtin "codeactions" display
						--      do the following
						--   codeactions = false,
						-- }
					},
				},
			})
			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end,
	},
}
