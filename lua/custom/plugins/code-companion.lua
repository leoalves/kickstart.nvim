-- code companion configuration file
return {
  {
    'olimorris/codecompanion.nvim',
    opts = {},
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      -- Configure in your setup
      require('codecompanion').setup {
        strategies = {
          chat = {
            adapter = 'openai',
          },
          inline = {
            adapter = 'openai',
          },
        },
        extensions = {
          mcphub = {
            callback = 'mcphub.extensions.codecompanion',
            opts = {
              make_vars = true,
              make_slash_commands = true,
              show_result_in_chat = true,
            },
          },
        },
        providers = {
          openai = {
            api_key = os.getenv 'OPENAI_API_KEY', -- Recommended: Store API key in environment variable
            model = 'gpt-4o', -- Or your preferred model
          },
          -- You can add other providers here if you have them (e.g., anthropic)
          -- anthropic = {
          --   api_key = os.getenv(""),
          --   model = "claude-3-sonnet-20240229",
          -- },
        },
      }
    end,
  },
}
