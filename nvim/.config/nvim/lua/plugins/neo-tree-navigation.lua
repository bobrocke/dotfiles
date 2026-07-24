return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.window = opts.window or {}
    opts.window.mappings = opts.window.mappings or {}

    opts.window.mappings["<C-A-Left>"] = function()
      vim.cmd("TmuxNavigateLeft")
    end
    opts.window.mappings["<C-A-Right>"] = function()
      vim.cmd("TmuxNavigateRight")
    end
    opts.window.mappings["<C-A-Down>"] = function()
      vim.cmd("TmuxNavigateDown")
    end
    opts.window.mappings["<C-A-Up>"] = function()
      vim.cmd("TmuxNavigateUp")
    end
  end,
}
