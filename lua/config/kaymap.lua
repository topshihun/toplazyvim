vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set
local opt = {noremap = true, silent = true }

map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- fast sava
map({"n", "i"}, "<C-s>", "<esc><Cmd>w<CR>", {silent = true})

-- nvimtree
-- map({"n", "i"}, "<Tab>", "<Cmd>NvimTreeToggle<CR>", opt)

-- fast quit
map("n", "<Leader>q", "<Cmd>qa<CR>", {silent = true})