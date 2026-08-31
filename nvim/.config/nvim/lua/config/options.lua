require("config.remote_clipboard").setup()
-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false
vim.opt.ttimeoutlen = 50
vim.opt.wrap = true
vim.opt.linebreak = true

-- Red squiggly underline for all spelling errors (undercurl works in Ghostty)
local function set_spell_highlights()
  local spell_groups = { "SpellBad", "SpellCap", "SpellRare", "SpellLocal" }
  for _, group in ipairs(spell_groups) do
    vim.api.nvim_set_hl(0, group, {
      undercurl = true,
      sp = "Red",
    })
  end
end

set_spell_highlights()

-- Re-apply after colorscheme changes (LazyVim loads theme after options.lua)
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = set_spell_highlights,
})
