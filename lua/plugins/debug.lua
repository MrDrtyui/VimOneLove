return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      dap.adapters.go = {
        type = "server",
        port = "${port}",
        executable = {
          command = "dlv",
          args = { "dap", "-l", "127.0.0.1:${port}" },
        },
      }

      dap.configurations.go = {
        {
          type = "go",
          name = "Debug file",
          request = "launch",
          program = "${file}",
        },
      }

      vim.keymap.set("n", "<leader>dc", function()
        require("dap").continue()
      end)
      vim.keymap.set("n", "<leader>do", function()
        require("dap").step_over()
      end)
      vim.keymap.set("n", "<leader>di", function()
        require("dap").step_into()
      end)
      vim.keymap.set("n", "<leader>dO", function()
        require("dap").step_out()
      end)

      vim.keymap.set("n", "<leader>db", function()
        require("dap").toggle_breakpoint()
      end)
      vim.keymap.set("n", "<leader>dB", function()
        require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
      end)
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()

      vim.keymap.set("n", "<leader>du", function()
        dapui.toggle()
      end)

      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end

      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },

  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  },
}
