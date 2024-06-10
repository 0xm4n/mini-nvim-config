-- Shorten funciton name
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Esc to clear highlight
keymap("n", "<Esc>", "<cmd>noh <CR>", opts)

-- Quick Save
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)

-- Keep next in the middle
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
keymap('n', 'J', 'mzJ`z', opts)

-- Center on page up/down
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)

-- indent code block
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Telescope Find
keymap('n', '<leader>ff',  "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
keymap('n', '<leader>fg',  "<cmd>lua require('telescope.builtin').live_grep({only_sort_text = true})<cr>", opts)
keymap('n', ',fg',  "<cmd>lua require('telescope.builtin').grep_string()<cr>", opts)
keymap('n', '<leader>fb',  "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
keymap('n', '<leader>fh',  "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)
keymap('n', ',fh',':execute \'Telescope help_tags default_text=\' . expand(\'<cword>\')<CR>', opts)
keymap('n', '<leader>fd',  "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>", opts)
keymap('n', '<leader>ft',  "<cmd>lua require('telescope.builtin').current_buffer_tags()<cr>", opts)
keymap('n', '<leader>fq',  "<cmd>lua require('telescope.builtin').quickfix()<cr>", opts)
keymap('n', '<leader>fo',  "<cmd>lua require('telescope.builtin').oldfiles()<cr>", opts)
keymap('n', '<leader>fr',  "<cmd>lua require('telescope.builtin').resume()<cr>", opts)
keymap('n', '<leader>fj',  "<cmd>lua require('telescope.builtin').jumplist()<cr>", opts)
keymap('n', '<leader>fk',  "<cmd>lua require('telescope.builtin').keymaps()<cr>", opts)

keymap('n', '<leader>fs',  "<cmd>lua require('telescope.builtin').git_status()<cr>", opts)
keymap('n', '<leader>fc',  "<cmd>lua require('telescope.builtin').git_commits()<cr>", opts)
keymap('n', '<leader>gb',  "<cmd>lua require('telescope.builtin').git_branches()<cr>", opts)

-- Telescope LSP
keymap('n', '<leader>ls',  "<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<cr>", opts)
keymap('n', '<leader>ld',  "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>", {silent = true})
keymap('n', '<leader>li',  "<cmd> Telescope lsp_implementation<CR>", {silent = true})
keymap('n', '<leader>lr',  "<cmd> Telescope lsp_references<CR>", {silent = true})
keymap('n', '<leader>lh',"<cmd>ClangdSwitchSourceHeader<CR>", opts)
keymap('n', ',ls',':execute \'Telescope lsp_dynamic_workspace_symbols default_text=\' . expand(\'<cword>\')<CR>', opts)

-- Harpoon
keymap('n', '<leader>ha',  "<cmd>lua require('harpoon.mark').add_file()<cr>", opts)
keymap('n', '<leader>hm',  "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
keymap('n', '<leader>ht',  "<cmd>Telescope harpoon marks<cr>", opts)
keymap('n', '<leader>hn',  "<cmd>lua require('harpoon.ui').nav_next()<cr>", opts)
keymap('n', '<leader>hp',  "<cmd>lua require('harpoon.ui').nav_prev()<cr>", opts)

-- Quickfix
keymap("n", "<leader>cn", ':cnext<CR>', opts)
keymap("n", "<leader>cp", ':cp<CR>', opts)

-- GDB debug (Dap)
keymap("n", "<F5>", ":lua require'dap'.continue()<CR>", opts)
keymap("n", "<F10>", ":lua require'dap'.step_over()<CR>", opts)
keymap("n", "<F11>", ":lua require'dap'.step_into()<CR>", opts)
keymap("n", "<F12>", ":lua require'dap'.step_out()<CR>", opts)
keymap("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>", opts)
keymap("n", "<leader>dc", ":lua require'dap'.close()<CR> :lua require'dapui'.close()<CR>", opts)
keymap('n', '<leader>dv',  "<cmd>lua require('telescope').extensions.dap.variables({})<CR>", opts)
keymap('n', '<leader>df',  "<cmd>lua require('telescope').extensions.dap.frames({})<CR>", opts)
keymap('n', '<leader>dl',  "<cmd>lua require('telescope').extensions.dap.list_breakpoints({})<CR>", opts)

-- Quick copy paste into system clipboard
vim.keymap.set('n', '<leader>y', function() require('osc52').copy_operator() end, {expr = true})
vim.keymap.set('x', '<leader>y', function() require('osc52').copy_visual() end)

-- Vista
keymap("n", "<F8>", '<cmd>Vista!!<CR>', opts)

