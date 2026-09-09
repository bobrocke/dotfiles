-- Disable LSP inlay hints by default (toggle with <leader>uh)
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
    },
  },
}