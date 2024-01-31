local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    html = { "prettier" },
    graphql = { "prettier" },

    sh = { "shfmt" },

    go = { "goimports_reviser", "gofumpt" },

    yaml = { "prettier" },

    markdown = { "prettier" },
    ["markdown.mdx"] = { "prettier" },
  },

  format_on_save = {
    lsp_fallback = true,
  },

  formatters = {
    injected = { options = { ignore_errors = true } },
  },
}

require("conform").setup(options)
