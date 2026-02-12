return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  version = false,
  branch = 'master',
  build = ':TSUpdate',
 config = function()
   local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {"lua", "asm", "bash", "c", "cpp", "cmake", "python", "sql"},
      highlight = {enable = true},
      indent = {enable = true}
    })
 end
}
