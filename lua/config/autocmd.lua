-- Auto close Quickfix
vim.cmd [[
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && &buftype == "quickfix" | q | endif
aug END
]]

-- Auto close noname buffer
vim.cmd [[
aug NoNameClose
  au!
  au WinEnter * if winnr('$') == 1 && bufname() == "" && &buftype == "quickfix" | q | endif
aug END
]]

-- Auto close nvimtree
vim.api.nvim_create_autocmd('BufEnter', {
    command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
    nested = true,
})

-- Remove colorcolumn on quickfix window
vim.cmd [[
au FileType qf setlocal colorcolumn=
]]

-- Hidden no_name buffer
vim.cmd [[
augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END
]]

vim.lsp.set_log_level("off")
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
		virtual_text = false
	}
)
