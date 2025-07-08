-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.g.autoformat = false
vim.b.autoformat = false

vim.lsp.enable("clangd")
vim.lsp.enable("rust-analyzer")
vim.lsp.enable("taplo")
