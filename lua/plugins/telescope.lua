return {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	version = "0.1.x",
	config = function()
		local actions = require "telescope.actions"
		require('telescope').setup {
			defaults = {
				vimgrep_arguments = {
					"rg",
					"-L",
					"--color=never",
					"--line-number",
					"--with-filename",
					"--column",
					"--smart-case",
					"--hidden",
					"--ignore-file",
					".gitignore",
				},
				prompt_prefix = " ",
				selection_caret = " ",
				entry_prefix = "  ",
				initial_mode = "insert",
				selection_strategy = "reset",
				sorting_strategy = "ascending",
				layout_strategy = "horizontal",
				scroll_strategy = 'limit',  -- do not cycle!
				layout_config = {
					horizontal = {
						prompt_position = "top",
						preview_width = 0.55,
						results_width = 0.9,
					},
					vertical = {
						mirror = false,
					},
					width = 0.90,
					height = 0.80,
					preview_cutoff = 0,
				},
				file_ignore_patterns = { "node_modules" },
				path_display = { "truncate" },
				winblend = 10,
				border = {},
				borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
				color_devicons = true,
				set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
				file_previewer = require("telescope.previewers").vim_buffer_cat.new,
				grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
				qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
				buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
			},
			extensions = {
				fzf = {
					fuzzy = true,                    -- false will only do exact matching
					override_generic_sorter = true,  -- override the generic sorter
					override_file_sorter = true,     -- override the file sorter
					case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
				}
			},
			preview = true,
		}

		require('telescope').load_extension('fzf')
	end,
	dependencies = {
		{"nvim-lua/plenary.nvim"},
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
		},
	}
}

