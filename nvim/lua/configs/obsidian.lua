local function titleCase(first, rest)
  return first:upper() .. rest:lower()
end

local options = {
  notes_subdir = "In",
  new_notes_location = "notes_subdir",

  workspaces = {
    {
      name = "winter-memo",
      path = "/Users/wintersakura/Library/Mobile Documents/iCloud~md~obsidian/Documents/winter-memo",
    },
  },

  daily_notes = {
    folder = "Calendar/Daily Notes",
    date_format = "%Y-%m-%d",
    alias_format = "%B %-d, %Y",
    template = "Daily Note Template.md",
  },

  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },

  templates = {
    subdir = "Extras/Templates",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M",
    substitutions = {},
  },

  wiki_link_func = function(opts)
    if opts.id == nil then
      return string.format("[[%s]]", opts.label)
    elseif opts.label ~= opts.id then
      return string.format("[[%s|%s]]", opts.id, opts.label)
    else
      return string.format("[[%s]]", opts.id)
    end
  end,

  follow_url_func = function(url)
    vim.fn.jobstart { "open", url }
  end,

  note_id_func = function(title)
    local suffix = ""
    if title ~= nil then
      return string.gsub(title, "(%a)([%w_']*)", titleCase)
    else
      for _ = 1, 4 do
        suffix = suffix .. string.char(math.random(65, 90))
      end

      return tostring(os.time()) .. "-" .. suffix
    end
  end,

  note_frontmatter_func = function(note)
    local out = { tags = note.tags }
    if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
      for k, v in pairs(note.metadata) do
        out[k] = v
      end
    end
    return out
  end,

  mappings = {
    ["gf"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
    ["<leader>ch"] = {
      action = function()
        return require("obsidian").util.toggle_checkbox()
      end,
      opts = { buffer = true, desc = "Toggle Checkbox" },
    },
  },

  ui = {
    enable = true,
    update_debounce = 200,
    checkboxes = {
      [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
      ["x"] = { char = "", hl_group = "ObsidianDone" },
      ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
    },
    bullets = { char = "•", hl_group = "ObsidianBullet" },
    external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
    reference_text = { hl_group = "ObsidianRefText" },
    highlight_text = { hl_group = "ObsidianHighlightText" },
    tags = { hl_group = "ObsidianTag" },
    hl_groups = {
      ObsidianTodo = { bold = true, fg = "#f6c177" },
      ObsidianDone = { bold = true, fg = "#31748f" },
      ObsidianTilde = { bold = true, fg = "#eb6f92" },
      ObsidianBullet = { bold = true, fg = "#9ccfd8" },
      ObsidianRefText = { underline = true, fg = "#9ccfd8" },
      ObsidianExtLinkIcon = { fg = "#9ccfd8" },
      ObsidianTag = { italic = true, fg = "#907aa9" },
      ObsidianHighlightText = { bg = "#75662e" },
    },
  },

  attachments = {
    img_folder = "Extras/Attachments",
    img_text_func = function(client, path)
      local link_path
      local vault_relative_path = client:vault_relative_path(path)
      if vault_relative_path ~= nil then
        link_path = vault_relative_path
      else
        link_path = tostring(path)
      end
      local display_name = vim.fs.basename(link_path)
      return string.format("![%s](%s)", display_name, link_path)
    end,
  },
}

require("obsidian").setup(options)
