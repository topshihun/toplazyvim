local nlsp_status, nvim_lsp = pcall(require, "lspconfig")
if not nlsp_status then
  vim.notify("don't find lspconfig")
  return
end

local lspconfig = require("lspconfig")

-- typst
lspconfig.tinymist.setup {
  settings = {
    formatterMode = "typstyle",
    semanticTokens = "disable"
  }
}

-- c/c++
-- require("lspconfig")["clangd"].setup {}

-- verilog/systemverilog
-- require("lspconfig")["svls"].setup {}

lspconfig.rust_analyzer.setup {
  on_attach = function(client, bufnr)
    set_lsp_keymap(bufnr)
  end,
  settings = {
    ['rust-analyzer'] = {},
  },
}