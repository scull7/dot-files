return {
	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",

		build = ":TSUpdate",

		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				sync_install = false,
				ignore_install = { "" },
				autopairs = {
					enable = true,
				},
				highlight = {
					enable = true, -- `false` will disable the whole extension
					disable = { "" }, -- list of languages that will be disabled
					additional_vim_regex_highlighting = true,
				},
				indent = { enable = true, disable = { "yaml" } },
				context_commentstring = {
					enable = true,
					enable_autocmd = false,
				},
			})
		end,
	},
	-- Rescript
	{
		"nkrkv/nvim-treesitter-rescript",
		lazy = true,
	},
}
