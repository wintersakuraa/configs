local overrides = require("configs.overrides")

return {
	-- override default plugin configs
	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			{ "nushell/tree-sitter-nu", build = ":TSUpdate nu" },
		},
	},
	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},

	{
		"hrsh7th/nvim-cmp",
		opts = function()
			local config = require("nvchad.configs.cmp")
			config.mapping["<Tab>"] = nil
			return config
		end,
	},

	-- formatting, linting, code actions
	{
		"stevearc/conform.nvim",
		event = "VeryLazy",
		opts = function()
			return require("configs.conform")
		end,
	},
	{
		"rachartier/tiny-code-action.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-telescope/telescope.nvim" },
		},
		event = "LspAttach",
		config = function()
			require("tiny-code-action").setup({
				telescope_opts = {
					layout_strategy = "horizontal",
					layout_config = {
						width = 0.7,
						height = 0.9,
						preview_cutoff = 1,
					},
				},
				signs = {
					quickfix = { "󰁨", { link = "DiagnosticInfo" } },
					others = { "?", { link = "DiagnosticWarning" } },
					refactor = { "", { link = "DiagnosticWarning" } },
					["refactor.move"] = { "󰪹", { link = "DiagnosticInfo" } },
					["refactor.extract"] = { "", { link = "DiagnosticError" } },
					["source.organizeImports"] = { "", { link = "TelescopeResultVariable" } },
					["source.fixAll"] = { "", { link = "TelescopeResultVariable" } },
					["source"] = { "", { link = "DiagnosticError" } },
					["rename"] = { "󰑕", { link = "DiagnosticWarning" } },
					["codeAction"] = { "", { link = "DiagnosticError" } },
				},
			})
		end,
	},

	-- lsp
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	-- vim tmux navigator
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},

	-- git fugitive
	{ "tpope/vim-fugitive", lazy = false },

	-- harpoon
	{
		"ThePrimeagen/harpoon",
		lazy = false,
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- oil
	{
		"stevearc/oil.nvim",
		lazy = false,
		opts = {
			delete_to_trash = true,
			lsp_file_methods = {
				autosave_changes = true,
			},
			view_options = {
				show_hidden = true,
			},
			keymaps = {
				["<C-v>"] = "actions.select_vsplit",
				["<C-s>"] = "actions.select_split",
				["<C-h>"] = ":TmuxNavigateLeft<CR>",
				["<C-l>"] = ":TmuxNavigateRight<CR>",
			},
		},
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- nvim surround
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup()
		end,
	},

	-- template string converter
	{
		"axelvc/template-string.nvim",
		event = "VeryLazy",
		config = function()
			require("template-string").setup()
		end,
	},

	-- obsidian
	{
		"epwalsh/obsidian.nvim",
		version = "*",
		lazy = true,
		ft = "markdown",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("configs.obsidian")
		end,
	},

	-- markdown preview
	{
		"toppair/peek.nvim",
		event = { "VeryLazy" },
		build = "deno task --quiet build:fast",
		config = function()
			require("peek").setup()
			vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
			vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
		end,
	},

	-- AI tools
	{
		"Exafunction/codeium.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		event = "VeryLazy",
		config = function()
			require("codeium").setup({
				enable_cmp_source = false,
				virtual_text = {
					enabled = true,

					-- How long to wait (in ms) before requesting completions after typing stops.
					idle_delay = 75,
					-- The key to press when hitting the accept keybinding but no completion is showing.
					-- Defaults to \t normally or <c-n> when a popup is showing.
					accept_fallback = nil,
					-- Key bindings for managing completions in virtual text mode.
					key_bindings = {
						-- Accept the current completion.
						accept = "<Tab>",
						-- Clear the virtual text.
						clear = "<CTRL-[>",
					},
				},
			})
		end,
	},

	-- Find and replace
	{
		"MagicDuck/grug-far.nvim",
		event = "VeryLazy",
		config = function()
			require("grug-far").setup({
				-- options, see Configuration section below
				-- there are no required options atm
				-- engine = 'ripgrep' is default, but 'astgrep' can be specified
			})
		end,
	},

	-- disabled
	{
		"mg979/vim-visual-multi",
		enabled = false,
	},
	{
		"NvChad/nvterm",
		enabled = false,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		enabled = false,
	},
	{
		"nvim-tree/nvim-tree.lua",
		enabled = false,
	},
}
