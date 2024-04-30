-- Updates from checkhealth
vim.g.python3_host_prog = '/usr/bin/python3'

-- https://github.com/volta-cli/volta/issus/866
if vim.fn.executable('volta') then
	vim.g.node_host_prog = vim.trim(vim.fn.system('volta which neovim-node-host'))
end

-- Remap space as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- <START> Setup Package Manager
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim';

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable', -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins')
-- <END> Setup Package Manager


require('keymaps')
require('options')
require('colorscheme')
