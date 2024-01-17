return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-emoji" },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")

    opts.window = {
      documentation = cmp.config.window.bordered(),
      completion = cmp.config.window.bordered(),
    }
  end,
}
