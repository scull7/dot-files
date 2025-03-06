local set = vim.opt

set.number = true
set.relativenumber = true
set.wrap = false

set.colorcolumn = '81'
set.cursorline = true
set.termguicolors = true

-- tpop/vim-sensible - neovim diff
-- https://www.reddit.com/r/vim/comments/4y8b51/what_are_common_settings_for_vim_that_are/
set.autochdir = false
set.ignorecase = true
set.lazyredraw = true
-- set.pastetoggle = '<Insert>'
set.shiftround = true
set.showcmd = true -- show command inh the bottom bar
set.showmatch = true -- highlight matching brace
set.smartcase = true
set.splitbelow = true
set.splitright = true

-- https://github.com/mhinz/vim-signify
-- default updatetime 4000ms is not good for async update
set.updatetime = 100
