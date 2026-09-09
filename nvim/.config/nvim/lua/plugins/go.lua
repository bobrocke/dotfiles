return {
  { import = "lazyvim.plugins.extras.lang.go" },
  -- golangci-lint v1.50.1 (and mason's prebuilt v2.12.2) were compiled with
  -- Go < 1.27 and fail to lint Go 1.27 projects (exit code 3):
  --   "the Go language version ... is lower than the targeted Go version (1.27.0)"
  -- Use the toolchain-built binary instead (compiled with go1.27.1).
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = function(_, opts)
      opts.linters = vim.tbl_deep_extend("force", opts.linters or {}, {
        golangcilint = {
          cmd = vim.fn.expand("~/go/bin/golangci-lint"),
        },
      })
    end,
  },
}
