return {
	-- Telescope
	{
		"nvim-telescope/telescope.nvim",

		dependencies = {
			"nvim-lua/popup.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
		},

		config = function()
			require("telescope").setup({})

			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<C-p>", builtin.git_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
			vim.keymap.set("n", "<leader>tb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
			vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
			vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})

			-- LSP Keymaps
			vim.keymap.set("n", "<leader>lsd", builtin.lsp_definitions, {})
			vim.keymap.set("n", "<leader>lsr", builtin.lsp_references, {})
			vim.keymap.set("n", "<leader>lsi", builtin.lsp_implementations, {})
			vim.keymap.set("n", "<leader>lst", builtin.lsp_type_definitions, {})
			vim.keymap.set("n", "<leader>lsx", builtin.diagnostics, {})
			vim.keymap.set("n", "<leader>lsci", builtin.lsp_incoming_calls, {})
			vim.keymap.set("n", "<leader>lsco", builtin.lsp_outgoing_calls, {})

			-- Treesitter
			vim.keymap.set("n", "<leader>ts", builtin.treesitter, {})

			-- Vim Things
			vim.keymap.set("n", "<leader>fx", builtin.quickfix, {})
			vim.keymap.set("n", "<leader>lj", builtin.jumplist, {})
			vim.keymap.set("n", "<leader>ll", builtin.loclist, {})
			vim.keymap.set("n", "<leader>lr", builtin.registers, {})
			vim.keymap.set("n", "<leader>ss", builtin.spell_suggest, {})

			-- Find in current file
			vim.keymap.set("n", "<leader>fb", builtin.current_buffer_fuzzy_find, {})
			vim.keymap.set("n", "<leader>ft", builtin.current_buffer_tags, {})
		end,
	},
}
