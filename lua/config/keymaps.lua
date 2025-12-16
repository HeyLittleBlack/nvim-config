-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = {
  noremap = true,
  silent = true,
}
--vim.keymap.set({ "n", "i", "c" }, "<C-a>", "<Home>", opts)
--vim.keymap.set({ "n", "i", "c" }, "<C-e>", "<End>", opts)
vim.keymap.set("n", "<S-j>", "<cmd>BufferLineCyclePrev<cr>", opts)
vim.keymap.set("n", "<S-k>", "<cmd>BufferLineCycleNext<cr>", opts)
vim.keymap.set("n", "<CR>", "o<ESC>", opts)
vim.keymap.set("n", "<S-CR>", "O<ESC>", opts)
vim.keymap.set({ "n" }, "<D-Left>", "^", opts)
vim.keymap.set({ "n" }, "<D-Right>", "$", opts)
vim.keymap.set({ "i", "c" }, "<D-Left>", "<Home>", opts)
vim.keymap.set({ "i", "c" }, "<D-Right>", "<End>", opts)
vim.keymap.del({ "n", "t" }, "<C-/>", opts)
vim.keymap.set("n", "<C-`>", function()
  local current_file_dir = vim.fn.expand("%:p:h")
  local cwd = (current_file_dir and current_file_dir ~= "" and current_file_dir ~= ".")
    and current_file_dir
    or LazyVim.root() -- 或者使用 vim.loop.cwd() 来获取当前 Neovim 的工作目录
    Snacks.terminal(nil, { cwd = cwd}) end, { desc = "Terminal (Root Dir)" })
vim.keymap.set(
    "t", "<C-`>", "<cmd>close<cr>", opts
)

local function open_typora()
    -- 获取当前文件的完整路径
    local filepath = vim.fn.expand('%')
    -- 构建外部命令。使用 'typora' 和文件的完整路径。
    -- ' & ' 用于在后台运行命令 (适用于 Unix/Linux/macOS)
    local command = 'Typora ' .. filepath .. '&'
    -- 在 shell 中执行命令
    vim.fn.system(command)
end

vim.keymap.set('n', '<leader>ot', open_typora, { desc = 'Open current file in Typora' })

