-- Split windows
vim.keymap.set('n', '<leader>sh', ':split<Return><C-w>w', { silent = true })
vim.keymap.set('n', '<leader>sv', ':vsplit<Return><C-w>w', { silent = true })



vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', {silent = true})
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', {silent = true})
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', {silent = true})
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', {silent = true})
