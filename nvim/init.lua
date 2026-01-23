-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- teytur config --
vim.cmd("nnoremap : :")
vim.cmd("nnoremap ; :")
vim.cmd("nnoremap æ :")
vim.cmd("nnoremap þ /")

-- insert mode underline cursor --
vim.cmd("set guicursor=i:hor20")
