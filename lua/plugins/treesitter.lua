return {
	{
		"nvim-treesitter/nvim-treesitter",
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
			}

			require("nvim-treesitter.install").prefer_git = true
		end,
	},
}

