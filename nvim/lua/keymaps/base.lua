vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Reload config
vim.keymap.set('n', "<leader>x", "<cmd>.lua<CR>", { silent = true })
vim.keymap.set('n', "<leader>xx", "<cmd>source %<CR>", { silent = true })
