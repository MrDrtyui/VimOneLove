return {
  {
    "vague-theme/vague.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("vague").setup({
        italic = true,
        transparent = true,
      })
      vim.cmd("colorscheme vague")
    end,
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
      })
      -- vim.cmd("colorscheme catppuccin")
    end,
  },

  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night", -- storm, moon, night, day
        transparent = true,
      })
      -- vim.cmd("colorscheme tokyonight")
    end,
  },

  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        transparent_mode = true,
      })
      -- vim.cmd("colorscheme gruvbox")
    end,
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "main", -- auto, main, moon, dawn
        disable_background = true,
      })
      -- vim.cmd("colorscheme rose-pine")
    end,
  },
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_disable_background = true
      vim.g.nord_italic = true
      vim.cmd("colorscheme nord")
    end,
  },

  -- Kanagawa - тема вдохновлена японской живописью
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        transparent = true,
      })
      -- vim.cmd("colorscheme kanagawa")
    end,
  },
}
