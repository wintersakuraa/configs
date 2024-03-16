local rosepine_palette = require("palettes")

local M = {}

M.ui = {
	theme = "rosepine",
	transparency = true,

	statusline = {
		theme = "minimal",
		separator_style = "block",
	},

	cmp = {
		style = "flat_dark",
		icons = true,
		lspkind_text = true,
		selected_item_bg = "colored",
	},

	hl_add = {
		TelescopeResultsNormal = { bg = rosepine_palette.base },
		TelescopePreviewNormal = { bg = rosepine_palette.base },
		TabLine = { bg = rosepine_palette.base, fg = rosepine_palette.base },
		TabLineFill = { bg = rosepine_palette.base, fg = rosepine_palette.base },
		TabLineSel = { bg = rosepine_palette.base, fg = rosepine_palette.base },
	},

	hl_override = {
		NormalFloat = { bg = rosepine_palette.base },
		FloatBorder = { fg = rosepine_palette.base, bg = rosepine_palette.base },
		LineNr = { fg = rosepine_palette.muted },
		Visual = { bg = rosepine_palette.highlight_med },

		CmpPmenu = { bg = rosepine_palette.surface },
		CmpBorder = { fg = rosepine_palette.surface, bg = rosepine_palette.surface },
		CmpDocBorder = { fg = rosepine_palette.base, bg = rosepine_palette.base },
		CmpDoc = { bg = rosepine_palette.base },

		TelescopeBorder = { fg = rosepine_palette.base, bg = rosepine_palette.base },
		TelescopePromptBorder = { fg = rosepine_palette.surface, bg = rosepine_palette.surface },
		TelescopePromptNormal = { fg = rosepine_palette.text, bg = rosepine_palette.surface },
		TelescopePromptPrefix = { fg = rosepine_palette.love, bg = rosepine_palette.surface },
		TelescopeSelection = { fg = rosepine_palette.text, bg = rosepine_palette.overlay },

		Type = { fg = rosepine_palette.foam },
		Typedef = { link = "Type" },
		Boolean = { fg = rosepine_palette.rose },
		String = { fg = rosepine_palette.gold },
		Character = { fg = rosepine_palette.gold },
		Conditional = { fg = rosepine_palette.pine },
		Constant = { fg = rosepine_palette.gold },
		Define = { fg = rosepine_palette.iris },
		Delimiter = { fg = rosepine_palette.subtle },
		Function = { fg = rosepine_palette.rose },
		Include = { fg = rosepine_palette.pine },
		Keyword = { fg = rosepine_palette.pine },
		Special = { fg = rosepine_palette.pine },
		Operator = { fg = rosepine_palette.subtle },
		Tag = { fg = rosepine_palette.foam },
		Comment = { fg = rosepine_palette.muted },
		Identifier = { fg = rosepine_palette.foam },
		Repeat = { fg = rosepine_palette.pine },

		["@constant"] = { fg = rosepine_palette.text },
		["@constant.builtin"] = { fg = rosepine_palette.love },

		["@module"] = { fg = rosepine_palette.text },
		["@module.builtin"] = { fg = rosepine_palette.text },

		["@string"] = { link = "String" },
		["@string.escape"] = { fg = rosepine_palette.pine },
		["@string.special"] = { link = "String" },

		["@type"] = { fg = rosepine_palette.foam },
		["@type.builtin"] = { fg = rosepine_palette.foam, bold = true },
		["@type.definition"] = { fg = rosepine_palette.foam },
		["@type.qualifier"] = { fg = rosepine_palette.foam },

		["@property"] = { fg = rosepine_palette.foam },

		["@function"] = { fg = rosepine_palette.rose },
		["@function.call"] = { fg = rosepine_palette.rose },
		["@function.builtin"] = { fg = rosepine_palette.rose, bold = true },
		["@function.macro"] = { link = "Function" },
		["@function.method"] = { fg = rosepine_palette.rose },
		["@function.method.call"] = { fg = rosepine_palette.rose },

		["@constructor"] = { fg = rosepine_palette.foam },
		["@operator"] = { link = "Operator" },

		["@keyword"] = { link = "Keyword" },
		["@keyword.function"] = { link = "Keyword" },
		["@keyword.operator"] = { fg = rosepine_palette.pine },
		["@keyword.import"] = { fg = rosepine_palette.pine },
		["@keyword.storage"] = { fg = rosepine_palette.foam },
		["@keyword.repeat"] = { fg = rosepine_palette.pine },
		["@keyword.return"] = { fg = rosepine_palette.pine },
		["@keyword.debug"] = { fg = rosepine_palette.rose },
		["@keyword.exception"] = { fg = rosepine_palette.pine },
		["@keyword.conditional"] = { fg = rosepine_palette.pine },
		["@keyword.conditional.ternary"] = { fg = rosepine_palette.pine },

		["@punctuation.delimiter"] = { fg = rosepine_palette.subtle },
		["@punctuation.bracket"] = { fg = rosepine_palette.subtle },
		["@punctuation.special"] = { fg = rosepine_palette.subtle },

		["@comment"] = { link = "Comment" },

		["@tag"] = { link = "Tag" },
		["@tag.attribute"] = { fg = rosepine_palette.iris },
		["@tag.delimiter"] = { fg = rosepine_palette.subtle },

		["@method"] = { fg = rosepine_palette.rose },
		["@method.call"] = { fg = rosepine_palette.rose },
		["@field"] = { fg = rosepine_palette.foam },
		["@variable.member"] = { fg = rosepine_palette.foam },
		["@class"] = { fg = rosepine_palette.foam },
		["@interface"] = { fg = rosepine_palette.foam },
		["@namespace"] = { link = "Include" },
		["@variable.parameter"] = { fg = rosepine_palette.iris },
	},

	-- disable
	nvdash = {
		enabled = false,
	},
	tabufline = {
		enabled = false,
	},
}

return M
