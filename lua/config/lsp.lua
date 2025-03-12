local nlsp_status, nvim_lsp = pcall(require, "lspconfig")
if not nlsp_status then
  vim.notify("don't find lspconfig")
  return
end

require("lspconfig")["tinymist"].setup {
  settings = {
    formatterMode = "typstyle",
    semanticTokens = "disable"
  }
}