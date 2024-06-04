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

