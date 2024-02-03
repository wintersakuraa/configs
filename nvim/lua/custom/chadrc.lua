---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "everforest",
  transparency = true,

  statusline = {
    theme = "minimal",
    separator_style = "block",
  },

  cmp = {
    style = "flat_dark",
    icons = true,
    lspkind_text = true,
    selected_item_bg = "colored",
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

local colors = {
  white = "#D3C6AA",
  darker_black = "#272f35",
  black2 = "#323a40",
  red = "#e67e80",
}

local function colorizer()
  local ColorOverrides = {
    -- telescope
    TelescopeBorder = { fg = colors.darker_black, bg = colors.darker_black },
    TelescopePromptBorder = { fg = colors.black2, bg = colors.black2 },
    TelescopeResultsNormal = { bg = colors.darker_black },
    TelescopePreviewNormal = { bg = colors.darker_black },
    TelescopePromptNormal = { fg = colors.white, bg = colors.black2 },
    TelescopeResultsTitle = { fg = colors.darker_black, bg = colors.darker_black },
    TelescopePromptPrefix = { fg = colors.red, bg = colors.black2 },

    -- cmp
    CmpPmenu = { bg = colors.darker_black },
    CmpBorder = { fg = colors.darker_black, bg = colors.darker_black },
    CmpDocBorder = { fg = colors.black2, bg = colors.black2 },
    CmpDoc = { bg = colors.black2 },

    -- float window
    FloatBorder = { fg = colors.darker_black, bg = colors.darker_black },
    NormalFloat = { bg = colors.darker_black },
  }

  for hl, col in pairs(ColorOverrides) do
    vim.api.nvim_set_hl(0, hl, col)
  end
end

colorizer()

return M
