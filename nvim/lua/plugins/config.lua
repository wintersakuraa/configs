return {
  { "christoomey/vim-tmux-navigator", lazy = false },
  { "tpope/vim-fugitive" },
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "stevearc/oil.nvim",
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
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "diff",
        "html",
        "jsdoc",
        "javascript",
        "typescript",
        "json",
        "lua",
        "luap",
        "luadoc",
        "markdown",
        "markdown_inline",
        "query",
        "regex",
        "toml",
        "tsx",
        "vim",
        "vimdoc",
        "yaml",
        "css",
        "graphql",
        "gitignore",
      },
    },
  },
}
