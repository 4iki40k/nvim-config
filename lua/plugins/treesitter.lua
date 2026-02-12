return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
 config = function()
   local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "asm", "bash", "c", "cpp", "cmake", "python", "sql"},
      highlight = {enable = true},
      indent = {enable = true}
    })
 end
}
