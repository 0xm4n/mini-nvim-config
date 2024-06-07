return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = false,
		build = ":TSUpdate",
		config = function ()
			require'nvim-treesitter.configs'.setup {
				ensure_installed = { "c", "cpp", "lua" },
				sync_install = false,
				auto_install = false,
				ignore_install = {},
				highlight = {
					enable = true,
					disable = { "fzf", "gitmessengerpopup", "fugitive", "NvimTree" },
					additional_vim_regex_highlighting = false,
				},
				textobjects = {
					select = {
						enable = true,
						lookahead = true,
						keymaps = {
							["af"] = "@function.outer",
							["if"] = "@function.inner",
							["as"] = "@class.outer",
							["is"] = "@class.inner",
							["ap"] = "@parameter.outer",
							["ip"] = "@parameter.inner",
						},
						include_surrounding_whitespace = true,
					},
					move = {
						enable = true,
						set_jumps = true,
						goto_previous_start = {
							["[["] = "@function.outer",
							["[s"] = "@class.outer",
						},
						goto_next_end = {
							["]]"] = "@function.outer",
							["]s"] = "@class.outer",
						},
						goto_next = {
							["]d"] = "@conditional.outer",
						},
						goto_previous = {
							["[d"] = "@conditional.outer",
						}
					},
					lsp_interop = {
						enable = true,
						border = 'none',
						peek_definition_code = {
							['<leader>pf'] = '@function.outer',
							['<leader>ps'] = '@class.outer'
						},
					},
				},
			}
			require("nvim-treesitter.install").prefer_git = true
		end,
	},
}

