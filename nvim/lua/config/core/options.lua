-- map leader
vim.g.mapleader = ' '
vim.g.maplocalleader = '//'

-- ui
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.number = true
vim.opt.scrolloff = 5              -- Scroll when closing to top or bottom of the screen
vim.opt.textwidth = 120
vim.opt.synmaxcol = 220            -- Don't try to syntax highlight minified files
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.hidden = true              -- Enables to switch between unsaved buffers and keep undo history

-- encoding
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
-- vim.cmd.scriptencoding('utf-8')

-- tab and indent
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.showmatch = true            -- Show matching brackets when text indicator is over them
vim.opt.matchtime = 2               -- How many tenths of a second to blink when matching brackets

-- search
vim.opt.ignorecase = true           -- Ignore case when doing search
vim.opt.smartcase = true            -- Search case-sensitive when there are uppercase characters
vim.opt.wrapscan = true             -- Search again from top when reached the bottom
vim.opt.hlsearch = false     -- Don't highlight after search

vim.opt.virtualedit = 'block'                       -- To be able to select past EOL in visual block mode

-- undo dir
vim.opt.undodir = '~/.undodir'

-- fold
vim.opt.foldmethod = 'marker'
