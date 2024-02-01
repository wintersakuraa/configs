---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "everforest",

  statusline = {
    theme = "minimal",
    separator_style = "block",
  },

  cmp = {
    style = "flat_light",
    icons = true,
    lspkind_text = true,
    selected_item_bg = "simple",
  },

  -- disable
  nvdash = {
    enabled = false,
  },
  tabufline = {
    enabled = false,
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
