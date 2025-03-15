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

-- lsp
function set_lsp_keymap(bufnr)
  vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.definition()<CR>", { buffer = bufnr, silent = true })
  vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { buffer = bufnr, silent = true })
  vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { buffer = bufnr, silent = true })
  vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { buffer = bufnr, silent = true })
end

-- cmp
function set_cmp_keymap(cmp)
return {
  ['<C-j>'] = cmp.mapping.select_next_item(),
  ['<C-k>'] = cmp.mapping.select_prev_item(),
  ['<C-d>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<C-e>'] = cmp.mapping.close(),
  ['<CR>'] = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace })
}
end

-- bufferline
map("n", "<S-l>", "<Cmd>BufferLineCycleNext<CR>", opt)
map("n", "<S-h>", "<Cmd>BufferLineCyclePrev<CR>", opt)