vim.o.number = true
vim.o.relativenumber = true
-- vim.o.cursorline = true

-- vim.o.visualbell = true

vim.o.textwidth = 79

-- TO CHECK formatoptions
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true


vim.o.scrolloff = 3

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.showmatch = true

-- fold settings
vim.o.foldmethod = "syntax"
vim.o.foldenable = false

-- Path to store the cscope files (cscope.files and cscope.out)
-- Defaults to '~/.cscope'
vim.cmd([[let g:cscope_dir = '~/.nvim-cscope']])

-- Map the default keys on startup
-- These keys are prefixed by CTRL+\ <cscope param>
-- A.e.: CTRL+\ d for goto definition of word under cursor
-- Defaults to off
vim.cmd([[let g:cscope_map_keys = 1]])

-- Update the cscope files on startup of cscope.
-- Defaults to off
vim.cmd([[let g:cscope_update_on_start = 1]])
vim.cmd([[set cursorline]])

-- vim.cmd([[autocmd VimEnter * CScopeStart]])
-- vim.cmd([[autocmd VimEnter * CScopeMapKeys]])
-- vim.cmd([[autocmd VimEnter * CScopeUpdate]])



-- Settings for the plugins
require('settings.lualine_settings')
require('settings.catppuccin_settings')
require('settings.nvim-tree_settings')
require('settings.mason_settings')
require('settings.comment_settings')
require('settings.telescope_settings')
