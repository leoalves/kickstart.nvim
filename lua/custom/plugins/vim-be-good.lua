-- vim-be-good configuration
return {
  {
    'ThePrimeagen/vim-be-good',
    dependencies = { 'nvim-lua/plenary.nvim' }, -- Add required dependencies
    config = function()
      -- Optional:  Add your configuration here
      -- For example, to enable logging:
      -- vim.g.vim_be_good_log_file = 1
    end,
    keys = {
      -- Add keybindings here, if needed
      -- Example:
      -- { "<leader>vg", "<cmd>VimBeGood<cr>", "VimBeGood" },
    },
    cmd = {
      'VimBeGood',
    },
  },
}
