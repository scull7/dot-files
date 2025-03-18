return {
	{
		"mhartington/formatter.nvim",

		dependencies = {
			"lukas-reineke/lsp-format.nvim",
		},

		config = function()
			local formatter = require("formatter")

			-- https://github.com/mhartington/formatter.nvim#format-on-save
			vim.api.nvim_exec(
				[[
          augroup FormatAutogroup
            autocmd!
            autocmd BufWritePost *.js,*.mjs,*.rs,*.lua FormatWrite
          augroup END
        ]],
				true
			)

			formatter.setup({
				filetype = {
					elm = {
						-- prettier
						function()
							return {
								exe = "elm-format",
								args = { "--stdin" },
								stdin = true,
							}
						end,
					},

					html = {
						-- prettier
						function()
							return {
								exe = "prettier",
								args = {
									"--stdin-filepath",
									vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
									"--double-quote",
								},
								stdin = true,
							}
						end,
					},

					javascript = {
						-- prettier
						function()
							return {
								exe = "prettier",
								args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
								stdin = true,
							}
						end,
					},

					json = {
						-- prettier
						function()
							return {
								exe = "prettier",
								args = {
									"--stdin-filepath",
									vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
									"--double-quote",
								},
								stdin = true,
							}
						end,
					},

					lua = {
						-- Need to `cargo install stylua`
						require("formatter.filetypes.lua").stylua,
					},

					rust = {
						-- Rustfmt
						function()
							return {
								exe = "rustfmt",
								args = { "emit=stdout", "--edition=2021" },
								stdin = true,
							}
						end,
					},

					typescript = {
						-- prettier
						function()
							return {
								exe = "prettier",
								args = {
									"--stdin-filepath",
									vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
									"--single-quote",
								},
								stdin = true,
							}
						end,
					},
				},
			})
		end,
	},
}
