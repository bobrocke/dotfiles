-- Make [b / ]b switch buffers reliably (prev / next) without which-key's
-- [ / ] group popup intercepting the leading key.
return {
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer", nowait = true },
      { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer", nowait = true },
      { "[B", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev", nowait = true },
      { "]B", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next", nowait = true },
    },
  },

  -- Stop which-key from opening its [ / ] group popup on the bare keys,
  -- so [b and ]b are not swallowed by the popup.
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.spec = vim.tbl_filter(function(m)
        if type(m) == "table" then
          local first = m[1] or m[0]
          if (first == "[" or first == "]") and m.group then
            return false -- drop the [ / ] popup groups
          end
        end
        return true
      end, opts.spec or {})
      return opts
    end,
  },
}
