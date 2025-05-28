return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      config = {
        week_header = {
          enable = true, --boolean use a week header
        },
        disable_move = true, -- boolean default is false disable move key
        hide = {
          statusline = false,
        },
      },
    }
  end,
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
  },
}
