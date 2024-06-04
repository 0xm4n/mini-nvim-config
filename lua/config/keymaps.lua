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
keymap('n', '<leader>fb',  "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
keymap('n', '<leader>fh',  "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)
keymap('n', '<leader>fd',  "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>", opts)
keymap('n', '<leader>ft',  "<cmd>lua require('telescope.builtin').current_buffer_tags()<cr>", opts)
keymap('n', '<leader>fq',  "<cmd>lua require('telescope.builtin').quickfix()<cr>", opts)
keymap('n', '<leader>fp',  "<cmd>lua require('telescope.builtin').oldfiles()<cr>", opts)
keymap('n', '<leader>fr',  "<cmd>lua require('telescope.builtin').resume()<cr>", opts)
keymap('n', '<leader>fj',  "<cmd>lua require('telescope.builtin').jumplist()<cr>", opts)
keymap('n', '<leader>fk',  "<cmd>lua require('telescope.builtin').keymaps()<cr>", opts)
keymap('n', '<leader>fs',  "<cmd>lua require('telescope.builtin').git_status()<cr>", opts)
keymap('n', '<leader>fc',  "<cmd>lua require('telescope.builtin').git_commits()<cr>", opts)
keymap('n', ',fg',  "<cmd>lua require('telescope.builtin').grep_string()<cr>", opts)
keymap('n', ',fh',':execute \'Telescope help_tags default_text=\' . expand(\'<cword>\')<CR>', opts)

-- Quick copy paste into system clipboard
vim.keymap.set('n', '<leader>y', function() require('osc52').copy_operator() end, {expr = true})
vim.keymap.set('x', '<leader>y', function() require('osc52').copy_visual() end)

