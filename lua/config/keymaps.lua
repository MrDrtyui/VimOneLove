-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close Tab" })
vim.keymap.set("n", "<Tab>", "gt", { desc = "Next Tab" })
vim.keymap.set("n", "<S-Tab>", "gT", { desc = "Previous Tab" })

-- Telescope
vim.keymap.set("n", "<leader><leader>", function()
  require("telescope.builtin").find_files()
end, { desc = "Search files" })

-- Aerial keymaps
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle<cr>", { desc = "Aerial (Symbols)" })

-- Terminal
vim.keymap.set("t", "jk", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
vim.keymap.set({ "n", "t" }, "<c-\\>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Terminal float" })
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Terminal horizontal" })
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical size=80<cr>", { desc = "Terminal vertical" })

-- Git
vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<cr>", { desc = "Neogit" })

-- Harpoon
vim.keymap.set("n", "<leader>ha", function()
  require("harpoon"):list():add()
end, { desc = "Harpoon add" })

vim.keymap.set("n", "<C-e>", function()
  require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
end, { desc = "Harpoon menu" })

vim.keymap.set("n", "<C-h>", function()
  require("harpoon"):list():select(1)
end, { desc = "Harpoon 1" })

vim.keymap.set("n", "<C-j>", function()
  require("harpoon"):list():select(2)
end, { desc = "Harpoon 2" })

vim.keymap.set("n", "<C-k>", function()
  require("harpoon"):list():select(3)
end, { desc = "Harpoon 3" })

vim.keymap.set("n", "<C-l>", function()
  require("harpoon"):list():select(4)
end, { desc = "Harpoon 4" })

-- Zen Mode
vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<cr>", { desc = "Zen Mode" })
