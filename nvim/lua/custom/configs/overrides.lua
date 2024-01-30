local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "c",
    "diff",
    "html",
    "jsdoc",
    "javascript",
    "typescript",
    "tsx",
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
    "dockerfile",
    "go",
    "gomod",
    "gowork",
    "gosum",
  },
  indent = {
    enable = true,
  },
  textobjects = {
    move = {
      enable = true,
      goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer" },
      goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer" },
      goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer" },
      goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer" },
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- sh staff
    "shfmt",

    -- golang staff
    "gopls",
    "goimports",
    "gofumpt",
    "gomodifytags",
    "impl",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettier",
  },
}

M.ui = {
  tabufline = {
    enabled = false,
  },

  statusline = {
    theme = "minimal",
    separator_style = "default",
    overriden_modules = nil,
  },
}

return M
