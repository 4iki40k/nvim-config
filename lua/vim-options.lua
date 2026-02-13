vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = false

vim.o.clipboard = "unnamedplus"

-- paste from clipboard
vim.keymap.set('n', '<C-S-v>', '"+p', { noremap = true, silent = true })
vim.keymap.set('v', '<C-S-v>', '"+p', { noremap = true, silent = true })
vim.keymap.set('c', '<C-S-v>', '<C-r>+', { noremap = true, silent = true })
vim.keymap.set('i', '<C-S-v>', '<C-r>+', { noremap = true, silent = true })

-- copy to clipboard
vim.keymap.set('n', '<C-c>', '"+y', {})
vim.keymap.set('v', '<C-c>', '"+y', {})

-- window change mode
vim.keymap.set('n', '<leader>w', '<C-w>', { desc = 'Window command prefix', noremap = true })
