-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-w><Left>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-w><Right>", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "<C-w><Down>", "<C-w>j", { desc = "Move to lower window" })
vim.keymap.set("n", "<C-w><Up>", "<C-w>k", { desc = "Move to upper window" })