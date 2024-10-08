-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Open a telescope window to show all the projects
map("n", "<leader>pm", ":Telescope neovim-project discover<CR>", opts)

-- Open new white tab like super+n vscode
map("n", "<C-n>", "<cmd>tabnew<CR>", { noremap = true, silent = true })

-- Copy filename
map("n", "<leader>cfn", ':let @+ = expand("%:t")<CR>', opts)