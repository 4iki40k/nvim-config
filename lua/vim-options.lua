vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true

vim.o.clipboard = "unnamedplus"

-- paste from clipboard
vim.keymap.set('n', '<C-v>', '"+p', { noremap = true, silent = true })
vim.keymap.set('x', '<C-v>', '"_dP', { noremap = true, silent = true })
vim.keymap.set('c', '<C-v>', '<C-r>+', { noremap = true, silent = true })
vim.keymap.set('i', '<C-v>', '<C-r>+', { noremap = true, silent = true })

-- copy to clipboard
vim.keymap.set('n', '<C-c>', '"+y', {})
vim.keymap.set('v', '<C-c>', '"+y', {})

-- window change mode
vim.keymap.set('n', '<leader>w', '<C-w>', { desc = 'Window command prefix', noremap = true })
