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
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["aa"] = "@parameter.outer",
        ["ia"] = "@parameter.inner",
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["al"] = "@comment.outer",
      },
    },
    move = {
      enable = true,
      goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer" },
      goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer" },
      goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer" },
      goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer" },
    },
    swap = {
      enable = true,
      swap_next = {
        ["<leader>n"] = "@parameter.inner",
      },
      swap_previous = {
        ["<leader>N"] = "@parameter.inner",
      },
    },
  },
}

M.nvimtree = {
  {
    view = {
      relativenumber = true,
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- golang staff
    "gopls",
    "gofumpt",
    "golines",
    "goimports",
    "golangci-lint",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "eslint_d",
    "prettierd",
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
