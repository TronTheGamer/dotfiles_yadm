-- bootstrap lazy.nvim, LazyVim and your plugins

vim.g.lazyvim_check_order = false

require("config.lazy")
require("config.keymaps")
require("config.autocmds")
require("config.options")
require("plugins.lualine")

-- Vim plug:----------------
local vim = vim
local Plug = vim.fn["plug#"]
vim.call("plug#begin")
Plug("prabirshrestha/tv.vim", { ["dir"] = "~/.config/nvim/plugged/tv.vim" })
vim.call("plug#end")
