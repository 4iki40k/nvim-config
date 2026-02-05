return {
  'akinsho/toggleterm.nvim', version = "*",
  config = function()
    require("toggleterm").setup()
    vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float <enter>', {silent = true})
    vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal <enter>', {silent = true})
    function _G.set_terminal_keymaps()
      local opts = {buffer = 0}
      vim.keymap.set('t', '<leader><esc>', [[<C-\><C-n>]], opts)
    end
    vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
  end
}
