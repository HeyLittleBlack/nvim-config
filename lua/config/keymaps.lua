-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = {
  noremap = true,
  silent = true,
}
--vim.keymap.set({ "n", "i", "c" }, "<C-a>", "<Home>", opts)
--vim.keymap.set({ "n", "i", "c" }, "<C-e>", "<End>", opts)
vim.keymap.set("n", "<S-j>", "<cmd>bprevious<cr>", opts)
vim.keymap.set("n", "<S-k>", "<cmd>bnext<cr>", opts)
vim.keymap.set("n", "<CR>", "o<ESC>", opts)
vim.keymap.set("n", "<S-CR>", "O<ESC>", opts)
vim.keymap.set({ "n" }, "<D-Left>", "^", opts)
vim.keymap.set({ "n" }, "<D-Right>", "$", opts)
vim.keymap.set({ "i", "c" }, "<D-Left>", "<Home>", opts)
vim.keymap.set({ "i", "c" }, "<D-Right>", "<End>", opts)
