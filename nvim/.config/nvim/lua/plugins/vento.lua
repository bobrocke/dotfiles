return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- LazyVim's opts_extend merges ensure_installed automatically,
      -- but we add vento + its dependencies explicitly
      vim.list_extend(opts.ensure_installed, {
        "vento",
        "html",
        "javascript",
      })
    end,
  },
}
