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
    'natecraddock/workspaces.nvim',
    config = function()
      require('workspaces').setup()
    end,
  },
}
