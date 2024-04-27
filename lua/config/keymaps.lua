-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local discipline = require("things.discipline")
discipline.cowboy()

local opts = { noremap = true, silent = true }

-- Map Ctrl + h to Alt + h
vim.api.nvim_set_keymap("n", "<A-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("i", "<A-h>", "<C-o><C-w>h", opts)

-- Map Ctrl + l to Alt + l
vim.api.nvim_set_keymap("n", "<A-l>", "<C-w>l", opts)
vim.api.nvim_set_keymap("i", "<A-l>", "<C-o><C-w>l", opts)
