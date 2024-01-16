-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local discipline = require("wintersakura.discipline")
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Do not copy when deleting
keymap.set("n", "x", '"_x')
keymap.set("x", "p", '"_dP')
keymap.set("n", "d", [["_d]])
keymap.set("v", "d", [["_d]])
keymap.set("n", "D", [["_D]])
keymap.set("n", "c", [["_c]])
keymap.set("v", "c", [["_c]])

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Move lines
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Window
keymap.set("n", "ss", ":split<Return><C-w>w", opts)
keymap.set("n", "sv", ":vsplit<Return><C-w>w", opts)
keymap.set("n", "<C-c>", "<C-w>c")

-- Remove hightlight
keymap.set("n", "<CR>", ":nohlsearch<CR>", opts)

-- Git
keymap.set("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", { noremap = true, desc = "Reset Hunk" })

-- Oli
keymap.set("n", "-", ":Oil<CR>", { desc = "Open parent directory" })

-- Vim tmux navigator
keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", opts)
keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", opts)
keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", opts)
keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", opts)
