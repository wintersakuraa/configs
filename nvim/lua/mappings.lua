require("nvchad.mappings")

local map = vim.keymap.set
local nomap = vim.keymap.del

local function opts(desc)
	desc = desc or ""
	return { noremap = true, silent = true, desc = desc }
end

-- Do not copy when deleting
map("n", "x", '"_x')
map("x", "p", '"_dP')
map("n", "d", [["_d]])
map("v", "d", [["_d]])
map("n", "D", [["_D]])
map("n", "c", [["_c]])
map("v", "c", [["_c]])

-- Escape
map("i", "jj", "<ESC>", { desc = "Escape insert mode" })

-- Select all
map("n", "<C-a>", "gg<S-v>G", opts())

-- Center cursor
map("n", "n", "nzzzv", opts())
map("n", "N", "Nzzzv", opts())
map("n", "<C-d>", "<C-d>zz", opts())
map("n", "<C-u>", "<C-u>zz", opts())

-- Move lines
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "J", ":m '>+1<CR>gv=gv")

-- Window
map("n", "ss", ":split<Return><C-w>w", opts())
map("n", "sv", ":vsplit<Return><C-w>w", opts())
map("n", "<C-c>", "<C-w>c", opts())

-- Remove hightlight
map("n", "<CR>", ":nohlsearch<CR>", opts())

-- NvimTree
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts("Nvim Tree Toggle"))

-- Telescope
map("n", "<leader>fr", ":Telescope resume<CR>", opts("Resume last search"))
map("n", "<leader>fd", ":Telescope diagnostics<CR>", opts("Lsp Diagnostics"))
map("n", "<leader>fs", ":Telescope current_buffer_fuzzy_find<CR>", opts("Find symbols"))

-- Git
map("n", "<C-g>", ":G<CR>", opts("Fugitive"))
map("n", "<leader>gl", ":tab G log --graph --decorate --oneline<CR>", opts("Git log"))
map("n", "<leader>hd", ":tab G diff<CR>", opts("Git diff"))

-- Gitsigns
map("n", "<leader>hs", ":Gitsigns stage_hunk<CR>", opts("Stage Hunk"))
map("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", opts("Reset Hunk"))
map("n", "<leader>hR", ":Gitsigns reset_buffer<CR>", opts("Reset Buffer"))
map("n", "<leader>hp", ":Gitsigns preview_hunk<CR>", opts("Preview Hunk"))
map("n", "<leader>gb", ":Gitsigns blame_line<CR>", opts("Git Blame"))
map("n", "<leader>td", ":Gitsigns toggle_deleted<CR>", opts("Toggle Deleted"))
map("n", "]c", ":Gitsigns next_hunk<CR>", opts("Next Hunk"))
map("n", "[c", ":Gitsigns prev_hunk<CR>", opts("Prev Hunk"))

-- Oil
map("n", "-", ":Oil<CR>", { noremap = true, desc = "Open parent directory" })

-- Vim tmux navigator
map("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts())
map("n", "<C-l>", ":TmuxNavigateRight<CR>", opts())
map("n", "<C-j>", ":TmuxNavigateDown<CR>", opts())
map("n", "<C-k>", ":TmuxNavigateUp<CR>", opts())

-- Obisidian
map("n", "<leader>fn", ":ObsidianQuickSwitch<CR>", opts("Find Notes"))
map("n", "<leader>od", ":ObsidianToday<CR>", opts("Daily Note: Today"))
map("n", "<leader>oy", ":ObsidianToday - 1<CR>", opts("Daily Note: Yesterday"))
map("n", "<leader>on", ":ObsidianToday + 1<CR>", opts("Daily Note: Tomorrow"))
map("n", "<leader>ot", ":ObsidianTemplate<CR>", opts("Obsidian Template"))
map("n", "<leader>oo", ":ObsidianOpen<CR>", opts("Obsidian Open"))

-- Gopher
map("n", "<leader>gsj", ":GoTagAdd json -transform camelcase<CR>", opts("Go Add json Tag"))
map("n", "<leader>gsy", ":GoTagAdd yaml -transform camelcase<CR>", opts("Go Add yaml Tag"))
map("n", "<leader>ir", ":GoIfErr<CR>", opts("Go If Err"))

-- Harpoon
local harpoon = require("harpoon")
harpoon:setup({})

harpoon:extend({
	UI_CREATE = function(cx)
		map("n", "<C-v>", function()
			harpoon.ui:select_menu_item({ vsplit = true })
		end, { buffer = cx.bufnr })

		map("n", "<C-x>", function()
			harpoon.ui:select_menu_item({ split = true })
		end, { buffer = cx.bufnr })
	end,
})

-- stylua: ignore start
map("n", "<leader>a", function() harpoon:list():add() end, opts("Add file to harpoon list" ) )
map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list(), { border = true }) end, opts("Open harpoon window" ))

map("n", "<C-f>", function() harpoon:list():select(1) end)
map("n", "<C-n>", function() harpoon:list():select(2) end)
map("n", "<C-y>", function() harpoon:list():select(3) end)
map("n", "<C-s>", function() harpoon:list():select(4) end)
-- stylua: ignore end

-- Disable
map("t", "<ESC>", "<Nop>")

nomap("t", "<C-x>")
nomap("n", "<leader>h")
nomap("n", "<leader>v")
nomap({ "n", "t" }, "<A-v>")
nomap({ "n", "t" }, "<A-h>")
nomap({ "n", "t" }, "<A-i>")
nomap("n", "<leader>pt")
nomap("n", "<S-tab>")
nomap("n", "<leader>x")
nomap("n", "<leader>b")
nomap("n", "<leader>n")
nomap("n", "<leader>rn")
nomap("n", "<tab>")
