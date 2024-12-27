local nord_palette = require("lua.palettes.nord")

local M = {}

M.base46 = {
	theme = "nord",
	hl_add = {
		TelescopeResultsNormal = { bg = nord_palette.base },
		TelescopePreviewNormal = { bg = nord_palette.base },
		TabLine = { bg = nord_palette.base, fg = nord_palette.base },
		TabLineFill = { bg = nord_palette.base, fg = nord_palette.base },
		TabLineSel = { bg = nord_palette.base, fg = nord_palette.base },
	},
	hl_override = {
		NormalFloat = { bg = nord_palette.base },
		FloatBorder = { fg = nord_palette.base, bg = nord_palette.base },
		LineNr = { fg = nord_palette.muted },
		Visual = { bg = nord_palette.highlight_med },

		CmpPmenu = { bg = nord_palette.surface },
		CmpBorder = { fg = nord_palette.surface, bg = nord_palette.surface },
		CmpDocBorder = { fg = nord_palette.base, bg = nord_palette.base },
		CmpDoc = { bg = nord_palette.base },

		TelescopeBorder = { fg = nord_palette.base, bg = nord_palette.base },
		TelescopePromptBorder = { fg = nord_palette.surface, bg = nord_palette.surface },
		TelescopePromptNormal = { fg = nord_palette.text, bg = nord_palette.surface },
		TelescopePromptPrefix = { fg = nord_palette.love, bg = nord_palette.surface },
		TelescopeSelection = { fg = nord_palette.text, bg = nord_palette.overlay },

		-- Type = { fg = nord_palette.foam },
		-- Typedef = { link = "Type" },
		-- Boolean = { fg = nord_palette.rose },
		-- String = { fg = nord_palette.gold },
		-- Character = { fg = nord_palette.gold },
		-- Conditional = { fg = nord_palette.pine },
		-- Constant = { fg = nord_palette.gold },
		-- Define = { fg = nord_palette.iris },
		-- Delimiter = { fg = nord_palette.subtle },
		-- Function = { fg = nord_palette.rose },
		-- Include = { fg = nord_palette.pine },
		-- Keyword = { fg = nord_palette.pine },
		-- Special = { fg = nord_palette.pine },
		-- Operator = { fg = nord_palette.subtle },
		-- Tag = { fg = nord_palette.foam },
		-- Comment = { fg = nord_palette.muted },
		-- Identifier = { fg = nord_palette.foam },
		-- Repeat = { fg = nord_palette.pine },

		-- ["@constant"] = { fg = nord_palette.text },
		-- ["@constant.builtin"] = { fg = nord_palette.love },
		--
		-- ["@module"] = { fg = nord_palette.text },
		-- ["@module.builtin"] = { fg = nord_palette.text },
		--
		-- ["@string"] = { link = "String" },
		-- ["@string.escape"] = { fg = nord_palette.pine },
		-- ["@string.special"] = { link = "String" },
		--
		-- ["@type"] = { fg = nord_palette.foam },
		-- ["@type.builtin"] = { fg = nord_palette.foam, bold = true },
		-- ["@type.definition"] = { fg = nord_palette.foam },
		-- ["@type.qualifier"] = { fg = nord_palette.foam },
		--
		-- ["@property"] = { fg = nord_palette.foam },
		--
		-- ["@function"] = { fg = nord_palette.rose },
		-- ["@function.call"] = { fg = nord_palette.rose },
		-- ["@function.builtin"] = { fg = nord_palette.rose, bold = true },
		-- ["@function.macro"] = { link = "Function" },
		-- ["@function.method"] = { fg = nord_palette.rose },
		-- ["@function.method.call"] = { fg = nord_palette.rose },
		--
		-- ["@constructor"] = { fg = nord_palette.foam },
		-- ["@operator"] = { link = "Operator" },
		--
		-- ["@keyword"] = { link = "Keyword" },
		-- ["@keyword.function"] = { link = "Keyword" },
		-- ["@keyword.operator"] = { fg = nord_palette.pine },
		-- ["@keyword.import"] = { fg = nord_palette.pine },
		-- ["@keyword.storage"] = { fg = nord_palette.foam },
		-- ["@keyword.repeat"] = { fg = nord_palette.pine },
		-- ["@keyword.return"] = { fg = nord_palette.pine },
		-- ["@keyword.debug"] = { fg = nord_palette.rose },
		-- ["@keyword.exception"] = { fg = nord_palette.pine },
		-- ["@keyword.conditional"] = { fg = nord_palette.pine },
		-- ["@keyword.conditional.ternary"] = { fg = nord_palette.pine },
		--
		-- ["@punctuation.delimiter"] = { fg = nord_palette.subtle },
		-- ["@punctuation.bracket"] = { fg = nord_palette.subtle },
		-- ["@punctuation.special"] = { fg = nord_palette.subtle },
		--
		-- ["@comment"] = { link = "Comment" },
		--
		-- ["@tag"] = { link = "Tag" },
		-- ["@tag.attribute"] = { fg = nord_palette.iris },
		-- ["@tag.delimiter"] = { fg = nord_palette.subtle },
		--
		-- ["@method"] = { fg = nord_palette.rose },
		-- ["@method.call"] = { fg = nord_palette.rose },
		-- ["@field"] = { fg = nord_palette.foam },
		-- ["@variable.member"] = { fg = nord_palette.foam },
		-- ["@class"] = { fg = nord_palette.foam },
		-- ["@interface"] = { fg = nord_palette.foam },
		-- ["@namespace"] = { link = "Include" },
		-- ["@variable.parameter"] = { fg = nord_palette.iris },
	},
	integrations = {},
	changed_themes = {},
	transparency = true,
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

M.cmp = {
	sources = {
		{ name = "cmp_tabnine" },
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "nvim_lua" },
		{ name = "path" },
	},
}

local status, chadrc = pcall(require, "chadrc")
return vim.tbl_deep_extend("force", M, status and chadrc or {})
