local M = {}

local opts = { noremap = true, silent = true }

M.disabled = {
  n = {
    ["<leader>wr"] = "",
    ["<leader>wk"] = "",
    ["<leader>/"] = "",
    ["<leader>b"] = "",
    ["<leader>n"] = "",

    ["<C-c>"] = "",
  },
}

M.general = {
  n = {
    ["x"] = { '"_x' },
    ["d"] = { '"_d' },
    ["D"] = { '"_D' },
    ["c"] = { [["_c]] },
    ["C"] = { [["_C]] },

    ["<C-a>"] = { "gg<S-v>G", "Select all", opts },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move line up", opts },
    ["J"] = { ":m '>+1<CR>gv=gv", "Move line down", opts },

    -- windows
    ["ss"] = { ":split<Return><C-w>w", "Split horizontal", opts },
    ["sv"] = { ":vsplit<Return><C-w>w", "Split vertical", opts },
    ["<C-c>"] = { "<C-w>c", "Close window", opts },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "Conform format",
      opts,
    },
  },

  x = {

    ["p"] = { '"_dP' },
  },

  i = { ["jj"] = { "<Esc>", "Esc", opts } },

  v = {
    ["d"] = { '"_d' },
    ["c"] = { '"_c' },
  },
}

M.gopher = {
  plugin = true,

  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
      opts,
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags",
      opts,
    },
  },
}

return M
