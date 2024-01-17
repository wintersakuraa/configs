return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    close_if_last_window = true,
    popup_border_style = "rounded",
    enable_normal_mode_for_inputs = true,
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        never_show = { ".DS_Store", ".git", ".idea" },
      },
    },
    default_component_configs = {
      indent = {
        with_markers = false,
      },
    },
  },
}
