return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "gofumpt",
        "docker-language-server",
      },
    },
  },

  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")
      opts.sources = opts.sources or {}

      -- GO
      table.insert(opts.sources, null_ls.builtins.formatting.gofumpt)
      table.insert(opts.sources, null_ls.builtins.formatting.goimports)

      -- TS / TSX / JS / JSX
      table.insert(opts.sources, null_ls.builtins.formatting.prettier)
    end,
  },
  { import = "lazyvim.plugins.extras.lsp.none-ls" },
}
