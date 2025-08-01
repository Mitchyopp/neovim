-- Basic settings

-- This is also a comment

vim.opt.number = true
vim.opt.relativenumber = true 
vim.opt.expandtab = true
vim.opt.shiftwidth = 2 
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cursorline = true
vim.opt.undofile = true

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
