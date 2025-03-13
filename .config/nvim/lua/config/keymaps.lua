-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereafter
--
local map = LazyVim.safe_keymap_set
map("n", "<leader>q", ":qa<cr>", { desc = "Quit all" })
map("n", "<leader>Q", ":qa!<cr>", { desc = "Quit all!" })
map("n", "<C-l>", ":FzfLua lines", { desc = "fzf.lua lines" })
map("n", "<leader>tt", ":CyberdreamToggleMode<CR>", { noremap = true, silent = true })

-- windows
vim.keymap.set("n", "<leader><left>", ":vertical resize +20<cr>")
vim.keymap.set("n", "<leader><right>", ":vertical resize -20<cr>")
vim.keymap.set("n", "<leader><up>", ":resize +10<cr>")
vim.keymap.set("n", "<leader><down>", ":resize -10<cr>")

-- find and replace
-- vim.keymap.set("v", "<C-r>", "\"hy:%s/<C-r>h//g<left><left><left>")

-- buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")
vim.keymap.set("n", "<leader>ml", ":b#<cr>")

-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- yank line to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- checkbox
vim.keymap.set("n", "<leader>ty", [[:s/\[\s\]/[x]/<cr>]], { silent = true })
vim.keymap.set("n", "<leader>tu", [[:s/\[x\]/[ ]/<cr>]], { silent = true })

function toggle_checkbox()
  -- Get the current line
  local line = vim.api.nvim_get_current_line()

  -- Check if line contains unchecked checkbox
  if line:match("^%s*-%s*%[ %]") then
    -- Replace unchecked with checked
    local new_line = line:gsub("%[ %]", "[x]")
    vim.api.nvim_set_current_line(new_line)

    -- Check if line contains checked checkbox
  elseif line:match("^%s*-%s*%[x%]") then
    -- Replace checked with unchecked
    local new_line = line:gsub("%[x%]", "[ ]")
    vim.api.nvim_set_current_line(new_line)

    -- If no checkbox, do nothing
  else
    print("No checkbox found on this line")
  end
end

vim.keymap.set("n", "<leader>ti", toggle_checkbox, { noremap = true, silent = true })
