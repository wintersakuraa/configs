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
		"nu",
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
			goto_next_start = { ["]f"] = "@function.outer" },
			goto_next_end = { ["]F"] = "@function.outer" },
			goto_previous_start = { ["[f"] = "@function.outer" },
			goto_previous_end = { ["[F"] = "@function.outer" },
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

M.mason = {
	ensure_installed = {
		"lua-language-server",
		"stylua",
		"typescript-language-server",
		"eslint-lsp",
		"deno",
		"prettierd",
		"eslint_d",
	},
}

return M
