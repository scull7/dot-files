local opts = { noremap = true, silent = true }

-- Setup keymaps for terminal navigation
-- https://vi.stackexchange.com/questions/4919/exit-from-terminal-mode-in-neovim-vim-8
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>', opts)

-- https://www.reddit.com/r/neovim/comments/og1cdv/comment/h4jjc5m/?utm_source=share&utm_medium=web2x&context=3
-- vim.keymap.set('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
