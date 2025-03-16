local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    vim.notify("don't find treesitter")
    return
end

treesitter.setup({
  ensure_installed = { "rust", "lua", "verilog", "python", "markdown",
                       "typst", "make", "kconfig", "cpp" },
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})
