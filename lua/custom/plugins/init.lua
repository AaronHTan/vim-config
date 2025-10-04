-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'akinsho/toggleterm.nvim', version = '*', config = true },

  { 'tpope/vim-fugitive', event = 'VeryLazy' },

  {
    '3rd/image.nvim',
    build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
    opts = {
      processor = 'magick_cli',
    },
  },
  {
    'coder/claudecode.nvim',
    dependencies = { 'folke/snacks.nvim' },
    Lazy = false,
    config = function()
      require('claudecode').setup {
        terminal_cmd = '/Users/aarontan/.nvm/versions/node/v22.18.0/bin/claude',
      }
      -- Set up keymaps after plugin loads
      local opts = { noremap = true, silent = true }
      vim.keymap.set('n', '‹leader>ac', '<cmd>ClaudeCode<cr>', vim.tbl_extend('force', opts, { desc = 'Toggle Claude' }))
      vim.keymap.set('n', '<leader>af', '<cd>ClaudeCodeFocus<cr>', vim.tbl_extend('force', opts, { desc = 'Focus Claude' }))
      vim.keymap.set('n', '<leader>ar', '<cmd>ClaudeCode --resume<er>', vim.tbl_extend('force', opts, { desc = 'Resume Claude' }))
      vim.keymap.set('n', '<leader>aC', '<cmd>ClaudeCode --continue<cr>', vim.tbl_extend('force', opts, { desc = 'Continue Claude' }))
      vim.keymap.set('n', '‹leader>am', '<cmd>ClaudeCodeSelectModel<cr>', vim.tbl_extend('force', opts, { desc = 'Select Claude model' }))
      vim.keymap.set('n', '<Leader>ab', '<cmd>ClaudeCodeAdd %<cr>', vim.tbl_extend('force', opts, { desc = 'Add current buffer' }))
      vim.keymap.set('v', '<leader>as', '<cmd>ClaudeCodeSend<cr>', vim.tbl_extend('force', opts, { desc = 'Send to Claude' }))
      vim.keymap.set('n', '<leader>aa', '<cmd>ClaudeCodeDiffAccept<cr>', vim.tbl_extend('force', opts, { desc = 'Accept diff' }))
      vim.keymap.set('n', '<leader>ad', '<cmd>ClaudeCodeDiffDeny<cr>', vim.tbl_extend('force', opts, { desc = 'Deny diff' }))
    end,
  },

  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
}
