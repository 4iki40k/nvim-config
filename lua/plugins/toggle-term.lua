return {
  'akinsho/toggleterm.nvim', version = "*",
  config = function()
    require("toggleterm").setup()
    vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float <enter>', {silent = true})
    vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal <enter>', {silent = true})
    function _G.set_terminal_keymaps()
      vim.keymap.set('t', '<A-Esc>', [[<C-\><C-n>]], {buffer = 0})
    end
    vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
  end
}
