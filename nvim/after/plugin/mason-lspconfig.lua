require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'elmls',
    'lua_ls',
    'rust_analyzer',
    'tailwindcss',
    'tsserver',
    'jsonls',
    'sqlls',
  }
})

local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = {"vim"}
      }
    }
  }
})
lspconfig.rust_analyzer.setup({})
lspconfig.elmls.setup({})
lspconfig.tailwindcss.setup({})
lspconfig.tsserver.setup({})
lspconfig.jsonls.setup({})
lspconfig.sqlls.setup({})

-- Setup keymaps for lsp
local opts = { noremap=true, silent=true }

-- Global mappings.
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer.
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    local lopts = { buffer = ev.buf, noremap=true, silent=true }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, lopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, lopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, lopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, lopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, lopts)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, lopts)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, lopts)
    vim.keymap.set('n', '<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders, lopts))
    end, lopts)
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, lopts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, lopts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, lopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, lopts)
    vim.keymap.set('n', '<leader>fmt', function()
      vim.lsp.buf.format { async = true }
    end, lopts)
  end,
})
