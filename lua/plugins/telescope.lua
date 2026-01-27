return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      "nvim-telescope/telescope-file-browser.nvim",
    },
    keys = {
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({
            cwd = require("lazy.core.config").options.root,
          })
        end,
        desc = "Find Plugin File",
      },
      {
        "sf",
        function()
          local telescope = require("telescope")

          local function telescope_buffer_dir()
            return vim.fn.expand("%:p:h")
          end

          telescope.extensions.file_browser.file_browser({
            path = "%:p:h",
            cwd = telescope_buffer_dir(),
            respect_gitignore = false,
            hidden = true,
            grouped = true,
            previewer = false,
            initial_mode = "normal",
            layout_config = { height = 40 },
          })
        end,
        desc = "Open File Browser with the path of the current buffer",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,

        path_display = { "truncate" },

        preview = {
          filesize_limit = 5,
          hide_on_startup = false,
        },

        entry_maker = function(entry)
          local make_entry = require("telescope.make_entry")
          local default_maker = make_entry.gen_from_file()
          local result = default_maker(entry)

          local stat = vim.loop.fs_stat(entry)
          if stat then
            local size = stat.size
            local mtime = os.date("%Y-%m-%d %H:%M", stat.mtime.sec)

            local size_str
            if size < 1024 then
              size_str = string.format("%dB", size)
            elseif size < 1024 * 1024 then
              size_str = string.format("%.1fK", size / 1024)
            else
              size_str = string.format("%.1fM", size / 1024 / 1024)
            end

            result.ordinal = result.ordinal .. " " .. size_str .. " " .. mtime
            result.display = function(entry_display)
              local display_text = entry_display.value
              return string.format("%-50s %8s  %s", display_text, size_str, mtime)
            end
          end

          return result
        end,
      },

      highlights = {
        TelescopeResultsTitle = { link = "Directory" },
      },
    },

    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)

      vim.api.nvim_set_hl(0, "TelescopePathPrefix", { fg = "#7aa2f7", bold = true })

      local actions = require("telescope.actions")
      local action_state = require("telescope.actions.state")

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "TelescopeResults",
        callback = function()
          vim.fn.matchadd("TelescopePathPrefix", "^[^/]*/")
        end,
      })
    end,
  },
}
