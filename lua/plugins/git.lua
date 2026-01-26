return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "▎" },
      },
    },
  },

  {
    "NeogitOrg/neogit",
    dependencies = "nvim-lua/plenary.nvim",
    cmd = "Neogit",
  },
}
