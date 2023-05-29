local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    event = function()
      require("nvim-treesitter.install").prefer_git = true
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
-- Install markdown-plugins
  {
    "iamcco/markdown-preview.nvim",
    bulid = function()
      vim.fn["mkdp#util#install"]()
    end,
    cmd = {"MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle"},
    ft = "markdown"
  },
  {
    "dhruvasagar/vim-table-mode",
    ft = "markdown"
  },
  {
    "mzlogin/vim-markdown-toc",
    ft = "markdown"
  },

}

return plugins
