-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'akinsho/toggleterm.nvim', version = '*', config = true },

  { 'tpope/vim-fugitive', event = 'VeryLazy' },

  {
    'coder/claudecode.nvim',
    dependencies = { 'folke/snacks.nvim' },
    lazy = false,
    config = function()
      require('claudecode').setup {
        terminal_cmd = '/home/aaron/.local/bin/claude', -- Point to local installation
      }

      -- Set up keymaps after plugin loads
      local opts = { noremap = true, silent = true }
      vim.keymap.set('n', '<leader>ac', '<cmd>ClaudeCode<cr>', vim.tbl_extend('force', opts, { desc = 'Toggle Claude' }))
      vim.keymap.set('n', '<leader>af', '<cmd>ClaudeCodeFocus<cr>', vim.tbl_extend('force', opts, { desc = 'Focus Claude' }))
      vim.keymap.set('n', '<leader>ar', '<cmd>ClaudeCode --resume<cr>', vim.tbl_extend('force', opts, { desc = 'Resume Claude' }))
      vim.keymap.set('n', '<leader>aC', '<cmd>ClaudeCode --continue<cr>', vim.tbl_extend('force', opts, { desc = 'Continue Claude' }))
      vim.keymap.set('n', '<leader>am', '<cmd>ClaudeCodeSelectModel<cr>', vim.tbl_extend('force', opts, { desc = 'Select Claude model' }))
      vim.keymap.set('n', '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', vim.tbl_extend('force', opts, { desc = 'Add current buffer' }))
      vim.keymap.set('v', '<leader>as', '<cmd>ClaudeCodeSend<cr>', vim.tbl_extend('force', opts, { desc = 'Send to Claude' }))
      vim.keymap.set('n', '<leader>aa', '<cmd>ClaudeCodeDiffAccept<cr>', vim.tbl_extend('force', opts, { desc = 'Accept diff' }))
      vim.keymap.set('n', '<leader>ad', '<cmd>ClaudeCodeDiffDeny<cr>', vim.tbl_extend('force', opts, { desc = 'Deny diff' }))
    end,
  },
}
