local harpoon = require("harpoon")

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
keymap.set("n", "<leader>gs", ":G<CR>", { remap = false, silent = true, desc = "Fugitive" })

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
keymap.set("n", "<leader>oo", "<cmd> ObsidianOpen<CR>", { noremap = true, desc = "Obsidian Open" })

-- Harpoon
harpoon:setup({})

-- stylua: ignore start
keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = "Add file to harpoon list" } )
keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open harpoon window" })

keymap.set("n", "<C-f>", function() harpoon:list():select(1) end)
keymap.set("n", "<C-i>", function() harpoon:list():select(2) end)
keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
-- stylua: ignore end
