return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.cmdline = opts.cmdline or {}
    opts.cmdline.keymap = vim.tbl_extend("force", opts.cmdline.keymap or {}, {
      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
    })
  end,
}
