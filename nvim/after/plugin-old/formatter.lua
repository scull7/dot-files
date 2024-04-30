-- https://github.com/mhartington/formatter.nvim#format-on-save
vim.api.nvim_exec([[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost *.js,*.mjs,*.rs,*.lua,*.elm FormatWrite
  augroup END
]], true)

require('formatter').setup({
  filetype = {
    dhall = {
      -- brew install dhall
      function()
        return {
          exe = "dhall format",
          args = {},
          stdin = true
        }
      end
    },
    elm = {
      -- prettier
      function()
        return {
          exe = "elm-format",
          args = { "--stdin" },
          stdin = true
        }
      end
    },

    html = {
      -- prettier
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--double-quote'},
          stdin = true
        }
      end
    },

    ["html.handlebars"] = {
      -- prettier
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
          stdin = true
        }
      end
    },

    javascript = {
      -- prettier
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
          stdin = true
        }
      end
    },

    json = {
      -- prettier
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--double-quote'},
          stdin = true
        }
      end
    },

    rust = {
      -- Rustfmt
      function()
        return {
          exe = "rustfmt",
          args = {"--emit=stdout", "--edition=2021"},
          stdin = true
        }
      end
    },

    typescript = {
      -- prettier
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote'},
          stdin = true
        }
      end
    },

    typescriptreact = {
      -- prettier
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote'},
          stdin = true
        }
      end
    }
  }
})

