return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    event = 'VeryLazy',
    config = function()
      -- Set up highlight groups before setup
      vim.api.nvim_set_hl(0, 'IblScope', { link = 'Function' })
      vim.api.nvim_set_hl(0, 'IblIndent', { link = 'LineNr' })

      require('ibl').setup({
        scope = { enabled = false },
      })
    end,
  },
}
