-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Restore vanilla "s" behavior
vim.keymap.set("n", "s", "cl", { noremap = true, silent = true })
vim.keymap.set("x", "s", "c", { noremap = true, silent = true }) -- visual: change selection
