return {
  {
    "catppuccin",
    opts = {
      flavour = "mocha", -- Keep Mocha as the theme
      transparent_background = true, -- Enable transparency
      integrations = {
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        overseer = true,
        lsp_trouble = true,
        rainbow_delimiters = true,
      },
      custom_highlights = function(colors)
        return {
          -- Make normal background transparent
          Normal = { bg = "NONE" },
          NormalNC = { bg = "NONE" },
          NormalFloat = { bg = "NONE" },
          FloatBorder = { bg = "NONE" },
          CursorLine = { bg = colors.crust }, -- Slightly visible cursor line
          StatusLine = { bg = colors.mantle, fg = colors.text }, -- Semi-transparent status bar
        }
      end,
    },
    priority = 1000, -- Ensure it loads before other themes
    lazy = false, -- Load immediately
    config = function(_, opts)
      require("catppuccin").setup(opts) -- Apply settings
      vim.api.nvim_command "colorscheme catppuccin-mocha" -- Set theme
    end,
  },
}
