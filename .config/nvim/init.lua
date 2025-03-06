-- Updates from checkhealth
vim.g.python3_host_prog = '/usr/bin/python3'

-- https://github.com/volta-cli/volta/issues/866
if vim.fn.executable('volta') then
  vim.g.node_host_prog = vim.trim(vim.fn.system('volta which neovim-node-host'))
end

-- NOTE: Order is important here

require('user.options')
require('user.keymaps')

-- require('plugins')
require('config.lazy')

-- require('user.colorscheme')
-- require('user.treesitter')
-- require('user.lspconfig')
-- require('user.lspsaga')
-- require('user.formatter')
-- require('user.lualine')

-- require('user.rust-tools')
