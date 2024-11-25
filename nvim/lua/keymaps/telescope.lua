local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', ":lua require('telescope.builtin').live_grep({ additional_args = { '--fixed-strings' }})<CR>", { })
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fs', builtin.search_history, {})
vim.keymap.set('n', '<leader>fq', builtin.quickfix, {})
vim.keymap.set('n', '<leader>fj', builtin.jumplist, {})
vim.keymap.set('n', '<leader>fn', builtin.highlights, {})
vim.keymap.set('n', '<leader>f/', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>fr', builtin.resume, {})
vim.keymap.set('n', '<leader>fk', ':Telescope keymaps<CR>', { silent = true })
vim.keymap.set('n', '<leader>fw', ':Telescope grep_string<CR>', { silent = true })


vim.keymap.set('n', '<leader>ft', ':TodoTelescope<CR>', { silent = true })

-- vim.keymap.set('n', '<leader>gd', require('telescope.builtin').lsp_definitions, { silent = true })
-- vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references, { silent = true })
-- vim.keymap.set('n', '<leader>gi', require('telescope.builtin').lsp_implementations, { silent = true })
-- vim.keymap.set('n', '<leader>D', require('telescope.builtin').lsp_type_definitions, { silent = true })
-- vim.keymap.set('n', '<leader>ds', require('telescope.builtin').lsp_document_symbols, { silent = true })
-- vim.keymap.set('n', '<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, { silent = true })


