-- [[ Git plugin module ]]
--  Plugins generally helpful for working with source control systems (mainly git)
return {
  -- See `:help gitsigns` to understand what the configuration keys do
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    config = function()
      local gitsigns = require 'gitsigns'
      gitsigns.setup {
        signs = {
          add = { text = '+' },
          change = { text = '~' },
          delete = { text = '_' },
          topdelete = { text = '‾' },
          changedelete = { text = '~' },
        },
      }

      -- Some custom keymaps for working with git hunks
      vim.keymap.set('n', '<leader>gs', gitsigns.preview_hunk_inline, { desc = '[S]how hunk under cursor' })
      vim.keymap.set('n', '<leader>gr', gitsigns.reset_hunk, { desc = '[R]evert hunk under cursor' })
      vim.keymap.set('n', ']g', gitsigns.next_hunk, { desc = 'Next [G]it hunk' })
      vim.keymap.set('n', '[g', gitsigns.prev_hunk, { desc = 'Previous [G]it hunk' })
    end,
  },
  -- The one and only
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>gg', '<cmd>Git<cr>', { desc = 'Open [G]it status' })
    end,
  },
}
