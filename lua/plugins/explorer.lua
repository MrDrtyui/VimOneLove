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
              preset = "select",
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
        width = 30,
      },
    },
  },
}
