return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-emoji" },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    opts.window = {
      completion = { scrollbar = false },
      documentation = {
        scrollbar = false,
        winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
      },
    }
  end,
}
