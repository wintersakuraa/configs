local M = {}

M.base46 = {
	theme = "nord",
	transparency = false,
}

M.ui = {
	statusline = {
		separator_style = "block",
	},

	cmp = {
		style = "atom_colored",
		icons = true,
		lspkind_text = true,
		selected_item_bg = "colored",
		format_colors = {
			tailwind = false,
		},
	},

	telescope = { style = "borderless" },

	-- disable
	tabufline = {
		enabled = false,
	},
}

M.nvdash = {
	load_on_startup = true,

	header = {
		"                            ",
		"     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
		"   ▄▀███▄     ▄██ █████▀    ",
		"   ██▄▀███▄   ███           ",
		"   ███  ▀███▄ ███           ",
		"   ███    ▀██ ███           ",
		"   ███      ▀ ███           ",
		"   ▀██ █████▄▀█▀▄██████▄    ",
		"     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
		"                            ",
		"     Powered By  eovim    ",
		"                            ",
	},

	buttons = {
		{ txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
		{ txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
		{ txt = "󰈭  Find Word", keys = "Spc f w", cmd = "Telescope live_grep" },
		{ txt = "󰒮  Resume last search", keys = "Spc f w", cmd = "Telescope resume" },
		{ txt = "  Mappings", keys = "Spc c h", cmd = "NvCheatsheet" },
		{ txt = "  Themes", keys = "Spc t h", cmd = "Telescope themes" },
	},
}

M.colorify = {
	enabled = true,
	mode = "virtual",
	virt_text = "󱓻 ",
	highlight = { hex = true, lspvars = true },
}

M.lsp = {
	signature = true,
}

local status, chadrc = pcall(require, "chadrc")
return vim.tbl_deep_extend("force", M, status and chadrc or {})
