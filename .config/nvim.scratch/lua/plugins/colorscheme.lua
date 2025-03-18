return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
	{ "lunarvim/darkplus.nvim" } ,
	{ "Mofiqul/dracula.nvim" },
	{ "EdenEast/nightfox.nvim" },
}
