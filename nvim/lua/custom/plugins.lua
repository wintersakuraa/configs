local overrides = require "custom.configs.overrides"

local plugins = {
  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
  },

  -- linting
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "custom.configs.lint"
    end,
  },

  -- formatting
  {
    "stevearc/conform.nvim",
    dependencies = {
      { "neovim/nvim-lspconfig" },
      { "nvim-lua/plenary.nvim" },
      { "williamboman/mason.nvim" },
    },
    event = "BufWritePre",
    cmd = "ConformInfo",
    config = function()
      require "custom.configs.conform"
    end,
  },

  -- lsp
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- gopher
  {
    "olexsmir/gopher.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").load_mappings "gopher"
    end,
    build = function()
      vim.cmd [[!silent GoInstallDeps]]
    end,
  },

  -- vim tmux navigator
  { "christoomey/vim-tmux-navigator", lazy = false },

  -- git fugitive
  { "tpope/vim-fugitive", lazy = false },

  -- harpoon
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- oil
  {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {
      delete_to_trash = true,
      lsp_rename_autosave = "unmodified",
      win_options = {
        spell = true,
      },
      view_options = {
        show_hidden = true,
      },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- nvim surround
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  -- obsidian
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require "custom.configs.obsidian"
    end,
  },

  -- disabled
  {
    "mg979/vim-visual-multi",
    enabled = false,
  },
  {
    "NvChad/nvterm",
    enabled = false,
  },
}
return plugins
