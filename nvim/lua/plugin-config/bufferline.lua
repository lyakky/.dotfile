vim.opt.termguicolors = true
require("bufferline").setup{
  options = {
    diagnostics =   "nvim__lsp",

    offsets =  {
      filetype = "NvimTree",
      text = "File Explorer",
      highlight = "Directory",
      text_align = "left"
    }
  }
}
