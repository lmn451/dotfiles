-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.keymap.set("n", "<M-j>", ":m .+1<CR>==") -- Alt-j to move line down
vim.keymap.set("n", "<M-k>", ":m .-2<CR>==") -- Alt-k to move line up
vim.keymap.set("i", "<M-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<M-k>", "<Esc>:m .-2<CR>==gi")
