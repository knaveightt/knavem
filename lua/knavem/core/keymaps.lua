-- set leader key for keymaps, and way to escape
vim.g.mapleader=" "
local keymap = vim.keymap

-- 
-- buffer shortcuts
--
keymap.set("n", "Q", "q") -- remap creating macros to capital Q
keymap.set("n", "q", "<cmd>bd<CR>") -- so that I can use 'q' to close buffers
keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Goto Previous Buffer" })
keymap.set("n", "<leader>bb", ":ls<cr>:b<Space>", { desc = "Quick Buffer List Select" })

--
-- split management
--
keymap.set("n", "<leader>w", "<C-w>", { desc="Window Management" })
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<M-h>", ":vertical resize -1<CR>")
keymap.set("n", "<M-l>", ":vertical resize +1<CR>")
keymap.set("n", "<M-j>", ":resize +1<CR>")
keymap.set("n", "<M-k>", ":resize -1<CR>")

-- 
-- Windows Specific Keymaps
--
keymap.set("n", "<leader>,,", "<cmd>cd C:/Users/josinski/AppData/Local/nvim<CR>")
