return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'mysql' }, lazy = true }, -- Optional
  },
  lazy = true,
  keys = {
    { '<leader>db', '<cmd>DBUI<cr>', desc = 'DBUI' },
    { '<leader>dc', '<cmd>DBUIToggle<cr>', desc = 'DBUIToggle' },
    { '<leader>df', '<cmd>DBUIFindBuffer<cr>', desc = 'DBUIFindBuffer' },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_win_position = 'right'
  end,
}
