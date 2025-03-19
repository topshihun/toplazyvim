-- nvim-lspconfig
local nlsp_status, nvim_lsp = pcall(require, "lspconfig")
if not nlsp_status then
  vim.notify("don't find lspconfig")
  return
end

--nvim-cmp
local status, cmp = pcall(require, "cmp")
if not status then
    vim.notify("don't find cmp")
    return
end

local lspconfig = require("lspconfig")

-- cmp
cmp.setup({
  sources = cmp.config.sources(
    {
      { name = "nvim_lsp" },
    },
    {
      { name = "buffer" },
      { name = "path" },
    }
  ),

  mapping = set_cmp_keymap(cmp),
})

-- typst
lspconfig.tinymist.setup {
  settings = {
    formatterMode = "typstyle",
    semanticTokens = "disable"
  }
}

lspconfig.rust_analyzer.setup {
  on_attach = function(client, bufnr)
    set_lsp_keymap(bufnr)
  end,
  settings = {
    ['rust-analyzer'] = {},
  },
}