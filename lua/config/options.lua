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

o.expandtab = true
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.smartindent = true

-- Misc
o.wrap = true
