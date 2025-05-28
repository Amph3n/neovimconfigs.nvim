return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
    config = function()
      require('ibl').setup {
        indent = { char = '┊' },
        scope = { enabled = false },
        exclude = {
          filetypes = {
            'checkhealth',
            'dashboard',
            'help',
            'lazy',
            'lspinfo',
          },
        },
      }
    end,
  },
}
