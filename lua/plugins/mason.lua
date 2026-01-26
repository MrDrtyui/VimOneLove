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
      },
    },
  },

  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, null_ls.builtins.formatting.gofumpt)
      table.insert(opts.sources, null_ls.builtins.formatting.goimports) -- опционально
    end,
  },
  { import = "lazyvim.plugins.extras.lsp.none-ls" },
}
