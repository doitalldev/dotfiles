vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without updating register" })

-- Move block of text left and right (indents)
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move block of text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

