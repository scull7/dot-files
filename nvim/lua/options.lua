local set = vim.opt

set.number = true
set.relativenumber = true
set.wrap = false

-- tope/vim-sensible

set.autochdir = false
set.ignorecase = true
set.lazyredraw = true
set.shiftround = true
set.showcmd = true -- show command in the bottom bar
set.showmatch = true -- highlight matching brace
set.smartcase = true
set.splitbelow = true
set.splitright = true

-- https://github.com/whinz/vim-signify
-- default updatetime 4000ms is not good for async update
set.updatetime = 100
