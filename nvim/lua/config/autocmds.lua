-- Turl off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Fix conceallevel for json files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function()
    vim.wo.conceallevel = 1
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "/Users/wintersakura/Library/Mobile Documents/iCloud~md~obsidian/Documents/winter-memo/*",
  callback = function()
    vim.cmd([[ObsidianOpen]])
  end,
})
