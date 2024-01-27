return {
  { "christoomey/vim-tmux-navigator", lazy = false },
  { "tpope/vim-fugitive" },
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
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
}
