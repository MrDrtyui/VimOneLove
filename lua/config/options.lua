-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local o = vim.opt

-- Number
o.number = true
o.relativenumber = true

-- Margin
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true

-- Find
o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.incsearch = true

-- Interface
o.cursorline = true
o.signcolumn = "yes"
o.termguicolors = true
o.showmode = false

o.clipboard = "unnamedplus"
o.mouse = "a"

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true
-- Misc
o.wrap = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
