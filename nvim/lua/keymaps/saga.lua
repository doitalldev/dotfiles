-- vim.keymap.set(
-- 	"n",
-- 	"<leader>ca",
-- 	vim.lsp.buf.code_action({ context = { only = { "quickfix", "refactor", "source" } } }),
-- 	{ silent = true }
-- )

vim.keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "<leader>dg", ":Lspsaga goto_definition<CR>", { silent = true })
vim.keymap.set("n", "<leader>dp", ":Lspsaga peek_definition<CR>", { silent = true })
vim.keymap.set("n", "<leader>dtg", ":Lspsaga goto_type_definition<CR>", { silent = true })
vim.keymap.set("n", "<leader>dtp", ":Lspsaga peek_type_definition<CR>", { silent = true })

vim.keymap.set("n", "<leader>dn", ":Lspsaga diagnostic_jump_next<CR>", { silent = true })
vim.keymap.set("n", "<leader>dp", ":Lspsaga diagnostic_jump_prev<CR>", { silent = true })

vim.keymap.set("n", "<leader>dw", ":Lspsaga show_workspace_diagnostics<CR>", { silent = true })

vim.keymap.set("n", "<leader>gr", ":Lspsaga finder<CR>", { silent = true })

vim.keymap.set("n", "<leader>rn", ":Lspsaga rename<CR>", { silent = true })

vim.keymap.set('n', 'K', ':Lspsaga hover_doc<CR>', { silent = true })

