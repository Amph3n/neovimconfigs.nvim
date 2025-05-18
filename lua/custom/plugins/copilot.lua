return {
  'github/copilot.vim',
  lazy = false,
  init = function()
    vim.g.copilot_no_tab_map = true
  end,
  config = function()
    vim.keymap.set('i', '<C-l>', 'copilot#Accept("<CR>")', {
      expr = true,
      replace_keycodes = false,
      silent = true,
      desc = 'Copilot Accept',
    })
  end,
}
