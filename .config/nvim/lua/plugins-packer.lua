-- Automatically reload packer when plugins.lua file is updated.
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return require("packer").startup(function(use)
	-- Local plugins go here.
	use("wbthomason/packer.nvim") -- have packer manage itself
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used by lots of plugins

	-- Git
	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
		-- tag = 'release' -- to use the latest release
		config = function()
			require("gitsigns").setup()
		end,
	})

	use({
		"TimUntersberger/neogit",
		requires = "nvim-lua/plenary.nvim",
	})

	use({ "f-person/git-blame.nvim" })

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use({ "nvim-telescope/telescope-file-browser.nvim" })

	-- DHALL (because it doesn't have a treesitter module)
	use({
		"vmchale/dhall-vim",
	})

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- Code Formatter
	use({ "lukas-reineke/lsp-format.nvim" })
	use({ "mhartington/formatter.nvim" })

	-- LSP Config
	use({
		"neovim/nvim-lspconfig",
		"williamboman/nvim-lsp-installer",
		"glepnir/lspsaga.nvim",
		"onsails/diaglist.nvim",
	})

	-- Rust
	use({ "simrat39/rust-tools.nvim" })

	-- Rescript
	use("nkrkv/nvim-treesitter-rescript")

	-- Status Line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- Colorschemes
	use({ "lunarvim/darkplus.nvim" })
	use({ "Mofiqul/dracula.nvim" })
	use({ "EdenEast/nightfox.nvim" })
end)
