-- Disable netrw before anything else loads. neo-tree.nvim (enabled via the
-- LazyVim neo-tree extra) is supposed to disable netrw itself once it loads,
-- but netrw's own FileExplorer autocmd is registered by Neovim's runtime
-- before our config even runs, so it wins the race when a directory is
-- passed directly on the command line (e.g. `nvim .`). That race caused
-- "E21: Cannot make changes, 'modifiable' is off" and a stray
-- "man.lua: no manual entry for 1" error on startup. Disabling netrw
-- unconditionally avoids the race entirely; neo-tree still hijacks
-- directory buffers on its own.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
