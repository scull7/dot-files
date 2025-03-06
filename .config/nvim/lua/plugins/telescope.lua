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

      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<CR>', { desc = 'Telescope: File Browser' })
      vim.keymap.set('n', '<C-p>', ':Telescope find_files<CR>', { desc = 'Telescope: Find Files' })
      vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'Telescope: Find Files' })
      vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = 'Telescope: Live Grep' })
      vim.keymap.set('n', '<leader>tb', ':Telescope buffers<CR>', { desc = 'Telescope: Buffers' })
      vim.keymap.set('n', '<leader>fh', ':Telescope help_tags<CR>', { desc = 'Telescope: Tags' })
    end
  },
}
