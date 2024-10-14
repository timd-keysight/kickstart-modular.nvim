-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'junegunn/vim-easy-align',
    'easics/filenavigation',
  },
  {
    'numToStr/Navigator.nvim',
    config = function()
      require('Navigator').setup()
    end,
  },
  {
    'jghauser/mkdir.nvim',
  },
  -- {
  --   'tpope/vim-abolish',
  -- },
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      -- { "<c>s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Fl[a]sh" },
      -- { "-t", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      -- { "<leader>-s", mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
      -- { "<leader>-S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      { "<leader>-f", mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
      { "<leader>-F", mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      --{ "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "<leader>-R", mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-?>",      mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
  },
  {
    'danymat/neogen',
    config = true,
    languages = {
      python = {
        template = { annotation_convention = 'numpy' },
      },
    },
    -- Uncomment next line if you want to follow only stable versions
    version = "*"
  },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  {
    'mbbill/undotree',
  },
}
