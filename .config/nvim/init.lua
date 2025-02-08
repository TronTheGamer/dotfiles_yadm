-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("snacks")

---------------------CyberDream Theme ----------------------------
require("cyberdream").setup({
  -- Enable transparent background
  transparent = true,

  -- Enable italics comments
  italic_comments = true,

  -- Replace all fillchars with ' ' for the ultimate clean look
  hide_fillchars = false,

  -- Modern borderless telescope theme - also applies to fzf-lua
  borderless_telescope = true,

  -- Set terminal colors used in `:terminal`
  terminal_colors = true,

  -- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
  cache = false,

  theme = {
    variant = "auto", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
    saturation = 1, -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)
    highlights = {
      -- Highlight groups to override, adding new groups is also possible
      -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

      -- Example:
      Comment = { fg = "#990033", bg = "NONE", italic = true, bold = true },

      -- Complete list can be found in `lua/cyberdream/theme.lua`
    },

    -- Override a highlight group entirely using the color palette
    overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
      -- Example:
      return {
        Comment = { fg = colors.green, bg = "NONE", italic = true },
        ["@property"] = { fg = colors.magenta, bold = true },
      }
    end,

    -- Override a color entirely
    -- colors = {
    --   -- For a list of colors see `lua/cyberdream/colours.lua`
    --   -- Example:
    --   bg = "#000000",
    --   green = "#00ff00",
    --   magenta = "#ff00ff",
    -- },
  },

  -- Disable or enable colorscheme extensions
  extensions = {
    telescope = true,
    notify = true,
    mini = true,
    ...,
  },
})

require("plugins.example")
-- ----------     Kanagawa Theme ----------------------------
-- Default options:
-- require("kanagawa").setup({
--   compile = false, -- enable compiling the colorscheme
--   undercurl = true, -- enable undercurls
--   commentStyle = { italic = true },
--   functionStyle = {},
--   keywordStyle = { italic = true },
--   statementStyle = { bold = true },
--   typeStyle = {},
--   transparent = false, -- do not set background color
--   dimInactive = false, -- dim inactive window `:h hl-NormalNC`
--   terminalColors = true, -- define vim.g.terminal_color_{0,17}
--   colors = { -- add/modify theme and palette colors
--     palette = {},
--     theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--   },
--   overrides = function(colors) -- add/modify highlights
--     return {}
--   end,
--   theme = "wave", -- Load "wave" theme when 'background' option is not set
--   background = { -- map the value of 'background' option to a theme
--     dark = "wave", -- try "dragon" !
--     light = "lotus",
--   },
-- })

-- ---------------------CyberDream Theme ----------------------------

-- Add a custom keybinding to toggle the colorscheme
vim.api.nvim_set_keymap("n", "<leader>tt", ":CyberdreamToggleMode<CR>", { noremap = true, silent = true })
-- setup must be called before loading
-- vim.cmd("colorscheme kanagawa")
