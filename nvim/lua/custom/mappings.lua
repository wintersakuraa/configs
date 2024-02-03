local M = {}

local opts = { noremap = true, silent = true }

M.disabled = {
  n = {
    ["<leader>wr"] = "",
    ["<leader>wk"] = "",
    ["<leader>/"] = "",
    ["<leader>b"] = "",
    ["<leader>n"] = "",
    ["<leader>pt"] = "",
    ["<leader>rn"] = "",
    ["<C-n>"] = "",
  },

  v = {
    ["<leader>/"] = "",
  },
}

M.general = {
  n = {
    ["x"] = { '"_x', "" },
    ["d"] = { [["_d]], "" },
    ["D"] = { [["_D]], "" },
    ["c"] = { [["_c]], "" },
    ["C"] = { [["_C]], "" },

    ["<C-a>"] = { "gg<S-v>G", "Select all", opts },
    ["n"] = { "nzzzv", "", opts },
    ["N"] = { "Nzzzv", "", opts },
    ["<C-d>"] = { "<C-d>zz", "", opts },
    ["<C-u>"] = { "<C-u>zz", "", opts },

    -- windows
    ["ss"] = { ":split<Return><C-w>w", "Split horizontal", opts },
    ["sv"] = { ":vsplit<Return><C-w>w", "Split vertical", opts },
    ["<C-c>"] = { "<C-w>c", "Close window", opts },

    -- nvim tree
    ["<leader>e"] = { "<cmd> NvimTreeToggle<CR>", "Toggle nvimtree", opts },

    -- oil
    ["-"] = { "<cmd>Oil<CR>", "Oil", opts },

    -- vim tmux navigator
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "Navigate Left", opts },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "Navigate Right", opts },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "Navigate Down", opts },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "Navigate Up", opts },

    -- harpoon
    ["<leader>a"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:setup {}
        harpoon:list():append()
      end,
      "Add file to harpoon list",
      opts,
    },
    ["<C-e>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:setup {}

        harpoon.ui:toggle_quick_menu(harpoon:list(), { border = true })
      end,
      "Open harpoon window",
      opts,
    },
    ["<C-f>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:setup {}

        harpoon:list():select(1)
      end,
      "",
      opts,
    },
    ["<C-n>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:setup {}

        harpoon:list():select(2)
      end,
      "",
      opts,
    },
    ["<C-y>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:setup {}

        harpoon:list():select(3)
      end,
      "",
      opts,
    },
    ["<C-s>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:setup {}

        harpoon:list():select(4)
      end,
      "",
      opts,
    },

    -- obsidian
    ["<leader>fn"] = { "<cmd> ObsidianQuickSwitch<CR>", "Find Notes", opts },
    ["<leader>od"] = { "<cmd> ObsidianToday<CR>", "Daily Note: Today", opts },
    ["<leader>oy"] = { "<cmd> ObsidianToday - 1<CR>", "Daily Note: Yesterday", opts },
    ["<leader>on"] = { "<cmd> ObsidianToday + 1<CR>", "Daily Note: Tomorrow", opts },
    ["<leader>ot"] = { "<cmd> ObsidianTemplate<CR>", "Obsidian Template", opts },
    ["<leader>oo"] = { "<cmd> ObsidianOpen<CR>", "Obsidian Open", opts },

    -- fugitive
    ["<C-g>"] = { "<cmd> G<CR>", "Fugitive", opts },
  },

  x = {
    ["p"] = { '"_dP', "" },
  },

  i = { ["jj"] = { "<Esc>", "Esc", opts } },

  v = {
    ["d"] = { [["_d]], "" },
    ["c"] = { [["_c]], "" },

    ["K"] = { ":m '<-2<CR>gv=gv", "Move line up", opts },
    ["J"] = { ":m '>+1<CR>gv=gv", "Move line down", opts },
  },
}

M.gopher = {
  plugin = true,

  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json<CR>",
      "Add json struct tags",
      opts,
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml<CR>",
      "Add yaml struct tags",
      opts,
    },
    ["<leader>ir"] = {
      "<cmd> GoIfErr<CR>",
      "if err check",
      opts,
    },
  },
}

return M
