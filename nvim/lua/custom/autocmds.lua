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

-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = "/Users/wintersakura/Library/Mobile Documents/iCloud~md~obsidian/Documents/winter-memo/*",
--   callback = function()
--     vim.cmd [[ObsidianOpen]]
--   end,
-- })

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})
