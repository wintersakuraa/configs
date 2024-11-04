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
		"nvim-tree/nvim-tree.lua",
		opts = {
			git = { enable = true },
		},
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
	-- {
	-- 	"nvimtools/none-ls.nvim",
	-- 	dependencies = {
	-- 		{ "nvim-lua/plenary.nvim" },
	-- 	},
	-- 	event = "VeryLazy",
	-- 	opts = function()
	-- 		return require("configs.none-ls")
	-- 	end,
	-- },

	{
		"stevearc/conform.nvim",
		event = "VeryLazy",
		opts = function()
			return require("configs.conform")
		end,
	},

	-- lsp
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	-- gopher
	{
		"olexsmir/gopher.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
		ft = "go",
		config = function(_, opts)
			require("gopher").setup(opts)
		end,
		build = function()
			vim.cmd([[!silent GoInstallDeps]])
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
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},

	-- tabnine AI completions
	{
		"codota/tabnine-nvim",
		build = "./dl_binaries.sh",
		event = "VeryLazy",
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
}
