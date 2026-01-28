return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        enabled = true,
        layout = {
          preview = false,
        },
        sources = {
          explorer = {
            auto_close = true,
            hidden = true,
            layout = {
              fullscreen = true,
              preset = "vertical",
              preview = false,
            },
          },
        },
      },
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "left",
        width = 50,
      },
    },
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    config = function()
      vim.keymap.set("n", "ss", ":Neotree filesystem reveal left<CR>", {})
      vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            visible = true,
          },
        },
      })
    end,
  },

  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    config = function()
      require("window-picker").setup()
    end,
  },
}
