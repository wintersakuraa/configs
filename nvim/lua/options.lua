require("nvchad.options")

vim.opt.mouse = ""
vim.opt.relativenumber = true
vim.opt.undofile = false
vim.opt.spell = true
vim.opt.guicursor = ""

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldnestmax = 5
