return {
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>yy",
        function()
          require("yazi").yazi()
        end,
        desc = "Open yazi",
      },
    },
    opts = {
      open_file_directly = true,
      floating_window_scaling_factor = 0.9,
      yazi_floating_window_border = "rounded",
    },
  },
}
