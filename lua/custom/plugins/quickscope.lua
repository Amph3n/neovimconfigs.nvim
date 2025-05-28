return {
  'unblevable/quick-scope',
  init = function()
    vim.g.qs_highlight_on_keys = { 'f', 'F', 't', 'T' }
  end,

  config = function()
    local group = vim.api.nvim_create_augroup('qs_colors', { clear = true })

    vim.api.nvim_create_autocmd('ColorScheme', {
      group = group,
      pattern = '*',
      callback = function()
        vim.cmd [[highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline]]
        vim.cmd [[highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline]]
      end,
    })
  end,
}
