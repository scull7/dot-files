return {
	'folke/neodev.nvim',
	'folke/which-key.nvim',
  -- Vim Surround
  {
    'kylechui/nvim-surround',
  },
  -- Telescope
	{
		'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' },
	},
  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = { 'nkrkv/nvim-treesitter-rescript' },
    run = ':TSUpdate',
  },
  -- Language Servers
  { 'williamboman/mason-lspconfig.nvim',
    dependencies = {
      'williamboman/mason.nvim', -- Auto installation of language servers
      'neovim/nvim-lspconfig', -- Auto configuration of language servers
    },
  },
  -- Sticky Context
  {
    'nvim-treesitter/nvim-treesitter-context',
  },
  -- Justfile Syntax
  {
    "NoahTheDuke/vim-just",
    ft = { "just" },
  },
  -- Trouble (LSP Quick fix)
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  -- Formatter
  {
    'mhartington/formatter.nvim',
  },
  -- Git Signs
  {
    'lewis6991/gitsigns.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- Git Blame
  'f-person/git-blame.nvim',

  -- Neogit
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'sindrets/diffview.nvim',
    }
  },
  -- Comment Plugin
  {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
  },
  -- Status Line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },

  -- Window Top Bar
  -- Unfortunately this plugin was deprecated by its author.
  -- {
  --   "utilyre/barbecue.nvim",
  --   name = "barbecue",
  --   version = "*",
  --   dependencies = {
  --     "SmiteshP/nvim-navic",
  --     "nvim-tree/nvim-web-devicons", -- optional dependency
  --   },
  --   opts = {
  --     -- configurations go here
  --   },
  -- },

  -- Co-Pilot
  'github/copilot.vim',

  -- DBML
  {
    'jidn/vim-dbml',
  },

  -- CSS Color Preview
  {
    'brenoprata10/nvim-highlight-colors'
  },

  -- COLOR SCHEMES

  -- https://github.com/EdenEast/nightfox.nvim
  { "EdenEast/nightfox.nvim" },

  { "morhetz/gruvbox" },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  { "Mofiqul/dracula.nvim" }
}
