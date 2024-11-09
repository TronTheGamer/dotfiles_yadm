-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereafter
--
local map = LazyVim.safe_keymap_set
map("n", "<leader>q", ":qa<cr>", { desc = "Quit all" })
map("n", "<leader>Q", ":qa!<cr>", { desc = "Quit all!" })
map("n", "<C-l>", ":FzfLua lines", { desc = "fzf.lua lines" })
