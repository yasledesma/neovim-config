-- -- standard remaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 

-- copy and paste behavior
vim.keymap.set("n", "y", '"+y')
vim.keymap.set("n", "p", '"+p')

-- disable CTRL+Z and ARROW KEYS
vim.keymap.set("", "<C-z>", "<nop>", { noremap = true }) 
vim.keymap.set("", "<C-c>", "<nop>", { noremap = true }) 
vim.keymap.set("", "<up>", "<nop>", { noremap = true })
vim.keymap.set("", "<down>", "<nop>", { noremap = true })
vim.keymap.set("", "<left>", "<nop>", { noremap = true })
vim.keymap.set("", "<right>", "<nop>", { noremap = true })
