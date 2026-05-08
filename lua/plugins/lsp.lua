return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        gopls = {},
        tsserver = {},
        dockerls = {},

        html = {},
        cssls = {},
        tailwindcss = {
          filetypes = {
            "html",
            "css",
            "scss",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
            "svelte",
          },
        },
        bufls = {
          cmd = { "bufls", "serve" },
          filetypes = { "proto" },
          root_dir = require("lspconfig.util").root_pattern("buf.yaml", ".git"),
        },
      },
    },
  },
}
