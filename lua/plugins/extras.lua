-- [[ Extra plugin module ]]
--  These are all the plugins that are not quite part of the core NeoVim experience,
--  but are also not significant enough to warrant their own plugin module
return {
  -- Transform your undo-history to a git-like tree
  {
    'mbbill/undotree',
  },
  -- Detect tabstop and shiftwidth automatically
  {
    'tpope/vim-sleuth',
  },
  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
}
