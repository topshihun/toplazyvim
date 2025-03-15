local status, bufferline = pcall(require, "bufferline")
if not status then
    vim.notify("没有找到 bufferline")
  return
end

-- bufferline.lua
require "bufferline".setup {
  options = {
    indicator = {
      icon = '▎', -- 分割线
      style = 'underline',
    },
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer" ,
        text_align = "left",
        highlight = "Directory",
        separator = true,
      }
    },
  }
}