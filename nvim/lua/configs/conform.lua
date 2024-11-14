require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "deno_fmt" },
		typescript = { "deno_fmt" },
		json = { "prettierd" },
		markdown = { "prettierd" },
		go = { "goimports", "gofmt" },
	},

	formatters = {
		deno_fmt = {
			command = "deno",
			args = { "fmt", "-" },
			stdin = true,
			condition = function(_, ctx)
				-- Define the list of possible ESLint configuration files
				local eslint_files =
					{ ".eslintrc", ".eslintrc.js", ".eslintrc.json", "eslint.config.js", "eslint.config.mjs" }

				-- Check if any of these files exist in the directory hierarchy
				for _, file in ipairs(eslint_files) do
					if vim.fs.find(file, { upward = true, path = ctx.dirname })[1] then
						return false -- ESLint configuration found
					end
				end
				return true -- No ESLint configuration found
			end,
			-- condition = function(_, ctx)
			-- 	return not vim.fs.find(".esling.json", { upward = true, path = ctx.dirname })[1]
			-- end,
		},
	},
})
