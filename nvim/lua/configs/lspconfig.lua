local nvlsp = require("nvchad.configs.lspconfig")

nvlsp.defaults()

local on_init = nvlsp.on_init
local capabilities = nvlsp.capabilities
local on_attach = function(client, bufnr)
	nvlsp.on_attach(client, bufnr)
	local telescope = require("telescope.builtin")

	-- mappings
	vim.keymap.set("n", "gd", function()
		telescope.lsp_definitions({ initial_mode = "normal" })
	end, { buffer = bufnr })
	vim.keymap.set("n", "gr", function()
		telescope.lsp_references()
	end, { buffer = bufnr, desc = "Find References" })

	vim.keymap.set("n", "<C-t>", function()
		require("tiny-code-action").code_action()
	end, { desc = "Lsp Code action" })
end

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
	root_dir = util.root_pattern(
		".eslintrc.json",
		".eslintrc.js",
		".eslintrc.cjs",
		".eslintrc",
		"eslint.config.js",
		"eslint.config.mjs"
	),
	settings = {
		codeAction = {
			showDocumentation = {
				enable = true,
			},
		},
	},
})

lspconfig.denols.setup({
	init_options = {
		lint = true,
		unstable = true,
		suggest = {
			imports = {
				hosts = {
					["https://deno.land"] = true,
					["https://cdn.nest.land"] = true,
					["https://crux.land"] = true,
				},
			},
		},
	},
	on_init = on_init,
	on_attach = on_attach,
	root_dir = function(filename, _)
		local tsRootDir = lspconfig.util.root_pattern("package.json", "tsconfig.json")(filename)
		if tsRootDir then
			return nil
		end

		return lspconfig.util.root_pattern("*.ts", "*.js")(filename)
	end,
	capabilities = capabilities,
})

lspconfig["ts_ls"].setup({
	on_init = on_init,
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = util.root_pattern("package.json", "tsconfig.json"),
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
