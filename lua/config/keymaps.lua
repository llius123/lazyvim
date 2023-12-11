-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to the next tab with Ctrl-Right
map("n", "<C-.>", ":bnext<CR>", opts)

-- Move to the previous tab with Ctrl-Left
map("n", "<C-,>", ":bprevious<CR>", opts)

-- New file like vscode with Ctrl-N
vim.keymap.set("n", "<C-n>", "<cmd>vnew<CR>", { noremap = true, silent = true })
