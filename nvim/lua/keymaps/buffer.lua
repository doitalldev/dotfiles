vim.keymap.set('n', '<leader>bd', ':bprevious <bar> bdelete #<CR>', {silent = true})
vim.keymap.set('n', '<leader>bc', ':bdelete!<CR>', {silent = true})
vim.keymap.set('n', '<leader>ba', ':%bdelete|edit #|normal`"<CR>', {silent = true})

