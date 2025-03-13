-- bootstrap lazy.nvim, LazyVim and your plugins

vim.g.lazyvim_check_order = false

require("config.lazy")
require("config.keymaps")
require("config.autocmds")
require("config.options")
