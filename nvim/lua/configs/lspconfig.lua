local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

lspconfig.eslint.setup({
	on_init = on_init,
	on_attach = function(_, bufnr)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			command = "EslintFixAll",
		})
	end,
	capabilities = capabilities,
	root_dir = util.root_pattern(".eslintrc.json", ".eslintrc.js"),
	settings = {
		codeAction = {
			showDocumentation = {
				enable = true,
			},
		},
	},
})

lspconfig.denols.setup({
	on_init = on_init,
	on_attach = on_attach,
	root_dir = util.root_pattern("deno.json", "deno.jsonc"),
	capabilities = capabilities,
})

lspconfig.tsserver.setup({
	on_init = on_init,
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = util.root_pattern("package.json"),
	single_file_support = false,
	init_options = {
		preferences = {
			disableSuggestions = true,
		},
	},
})

lspconfig.gopls.setup({
	on_init = on_init,
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_dir = util.root_pattern("go.work", "go.mod", ".git"),
	settings = {
		gopls = {
			gofumpt = true,
			hints = {
				assignVariableTypes = true,
				compositeLiteralFields = true,
				compositeLiteralTypes = true,
				constantValues = true,
				functionTypeParameters = true,
				parameterNames = true,
				rangeVariableTypes = true,
			},
			analyses = {
				fieldalignment = true,
				nilness = true,
				unusedparams = true,
			},
			completeUnimported = true,
			usePlaceholders = false,
			directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
			staticcheck = true,
		},
	},
})
