vim.g.mapleader = " "
vim.keymap.set('n', '<C-c>', '"+y', {})
vim.keymap.set('v', '<C-c>', '"+y', {})
vim.keymap.set('n', '<leader>w', '<C-w>', { desc = 'Window command prefix', noremap = true })
