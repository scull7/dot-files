return {
  {
		"neovim/nvim-lspconfig",

    config = function ()
      local on_attach = function(client, bufnr)
        local function buf_set_keymap(...)
          vim.api.nvim_buf_set_keymap(bufnr, ...)
        end

        local function buf_set_option(...)
          vim.api.nvim_buf_set_option(bufnr, ...)
        end

        -- Enable completion triggered by <c-x><c-o>
        buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

        -- Key Mappings
        local opts = { noremap = true, silent = true }

        -- See `:help vim.lsp.*` for documentation on any of the below functions
        buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
        buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
        buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
        buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
        buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
        buf_set_keymap("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
        buf_set_keymap("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
        buf_set_keymap("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
        buf_set_keymap("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
        buf_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
        buf_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
        buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
        buf_set_keymap("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
        buf_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
        buf_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
        buf_set_keymap("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
        buf_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
      end

      local config = require('lspconfig')

      -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

      -- Install volta fisrt
      -- curl https://get.volta.sh | bash

      -- You need to install node before installing any of the nodejs base servers
      -- volta install node.
      local servers = {
        -- volta install vscode-langservers-extracted
        "cssls",
        "eslint", -- ESLint for JavaScript
        "jsonls",

        -- apt install cabal-install
        -- cabal install dhall-lsp-server
        "dhall_lsp_server",

        -- volta install dockerfile-language-server-nodejs
        "dockerls",
        -- volta install elm-test elm-format @elm-tooling/elm-language-server
        "elmls", -- Elm language server
        -- volta install graphql-language-service
        "graphql",
        -- volta install remark-language-server
        "remark_ls",
        -- rustup component add rust-src
        -- curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
        "rust_analyzer",
        -- volta install sql-language-server
        "sqlls",
        -- volta install yaml-language-server
        "yamlls",
      }

      for _, server in ipairs(servers) do
        config[server].setup({
          on_attach = on_attach,
          flag = {
            debounce_text_changes = 150,
          }
        })
      end


      -- @TODO - Add RescriptLS

    end
  },
  {
		"williamboman/nvim-lsp-installer",

    opts = {
      automatic_installation = true,
      ui = {
        icons = {
          server_installed = "✓",
          server_pending = "➜",
          server_uninstalled = "✗",
        },
      },
    }
  },
  {
		"glepnir/lspsaga.nvim",
  },
  {
		"onsails/diaglist.nvim",

    config = function ()
      local diaglist = require("diaglist")

      diaglist.init({
        -- optional settings
        -- below are defaults
        debug = false,

        -- increase for noisy servers
        debounce_ms = 150,
      })
    end
  },
}
