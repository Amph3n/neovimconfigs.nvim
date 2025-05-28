return {
  'gbprod/phpactor.nvim',
  ft = 'php',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'neovim/nvim-lspconfig',
    -- If the update/install notification doesn't show properly,
    -- you should also add here UI plugins like "folke/noice.nvim" or "stevearc/dressing.nvim"
  },
  opts = {
    lsp = {
      enable = false,
    },
  },
  config = function()
    require('phpactor').setup {
      lsp = {
        enable = false, -- important: disables duplicate LSP
      },
    }

    vim.keymap.set('n', '<leader>pa', ':PhpActor', { desc = 'Opens Phpactors menu' })
  end,
}
