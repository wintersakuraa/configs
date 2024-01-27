local discipline = require("wintersakura.discipline")
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Delete default LazyVim keymaps
keymap.del("n", "<leader>fn")

-- Do not copy when deleting
keymap.set("n", "x", '"_x')
keymap.set("x", "p", '"_dP')
keymap.set("n", "d", [["_d]])
keymap.set("v", "d", [["_d]])
keymap.set("n", "D", [["_D]])
keymap.set("n", "c", [["_c]])
keymap.set("v", "c", [["_c]])

-- Escape
keymap.set("i", "jj", "<Esc>", opts)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Move lines
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Window
keymap.set("n", "ss", ":split<Return><C-w>w", opts)
keymap.set("n", "sv", ":vsplit<Return><C-w>w", opts)
keymap.set("n", "<C-c>", "<C-w>c", opts)

-- Remove hightlight
keymap.set("n", "<CR>", ":nohlsearch<CR>", opts)

-- Git
keymap.set("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", { noremap = true, silent = true, desc = "Reset Hunk" })
keymap.set("n", "<leader>gs", ":G<CR>", { noremap = true, silent = true, desc = "Fugitive" })

-- Oli
keymap.set("n", "-", "<cmd>Oil<CR>", { noremap = true, desc = "Open parent directory" })

-- Vim tmux navigator
keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", opts)
keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", opts)
keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", opts)
keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", opts)

-- Obisidian
keymap.set("n", "<leader>fn", "<cmd> ObsidianQuickSwitch<CR>", { noremap = true, desc = "Find Notes" })
keymap.set("n", "<leader>od", "<cmd> ObsidianToday<CR>", { noremap = true, desc = "Daily Note: Today" })
keymap.set("n", "<leader>oy", "<cmd> ObsidianToday - 1<CR>", { noremap = true, desc = "Daily Note: Yesterday" })
keymap.set("n", "<leader>on", "<cmd> ObsidianToday + 1<CR>", { noremap = true, desc = "Daily Note: Tomorrow" })
keymap.set("n", "<leader>ot", "<cmd> ObsidianTemplate<CR>", { noremap = true, desc = "Obsidian Template" })
