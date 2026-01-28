return {
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 3000,
      background_colour = "#1a1625",
      render = "compact",
    },
  },

  -- filename
  {
    "b0o/incline.nvim",
    dependencies = { "vague-theme/vague.nvim" },
    event = "BufReadPre",
    priority = 1200,
    config = function()
      -- Vague цветовая схема
      local vague_colors = {
        purple = "#8b5cf6",
        light_purple = "#a78bfa",
        text = "#cdd6f4",
        muted = "#6c7086",
        bg_dark = "#181825",
        bg = "#1e1e2e",
      }

      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = {
              guibg = vague_colors.bg_dark,
              guifg = vague_colors.text,
            },
            InclineNormalNC = {
              guifg = vague_colors.muted,
              guibg = vague_colors.bg_dark,
            },
          },
        },
        window = {
          margin = { vertical = 0, horizontal = 1 },
        },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+] " .. filename
          end
          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return {
            { icon, guifg = color },
            { " " },
            { filename },
          }
        end,
      })
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "▏",
      },
      scope = {
        show_start = false,
        show_end = false,
      },
    },
  },

  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        tailwind = true,
      },
    },
  },
}
