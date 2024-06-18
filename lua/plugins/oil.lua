return {
  'stevearc/oil.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('oil').setup {
      columns = {
        'size',
        'icon',
      },
      keymaps = {
        ['.'] = 'actions.cd',
      },
      float = {
        padding = 8,
      },
    }
    vim.keymap.set('n', '<leader>f', function()
      require('oil').open()
    end, { desc = 'Toggle [F]iletree' })
  end,
}
