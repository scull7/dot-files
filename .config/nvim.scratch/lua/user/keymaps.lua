local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }

-- shorten the function name
local keymap = vim.api.nvim_set_keymap


-- Remap space as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Ctrl-P keymaps
-- keymap('n', '<C-p>', ':Files<CR>', opts)

-- Setup keymaps for terminal navigation
-- https://vi.stackexchange.com/questions/4919/exit-from-terminal-mode-in-neovim-vim-8
local term_opts = { silent = true }

keymap('t', '<Esc>', '<C-\\><C-n>', opts)

-- Setup keymaps for diaglist
keymap('n', '<space>dw', '<cmd> lua require(\'diaglist\').open_all_diagnostics()<CR>', opts)
keymap('n', '<space>d0', '<cmd> lua require(\'diaglist\').open_buffer_diagnostics()<CR>', opts)
