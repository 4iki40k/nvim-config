if vim.bo.filetype ~= "c" then
  return
end

vim.opt_local.indentexpr = ""
vim.opt_local.smartindent = false
vim.opt_local.cindent = false
vim.opt_local.autoindent = true
vim.opt_local.indentkeys = ""
vim.opt_local.expandtab = true
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
