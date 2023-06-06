local builtin = require('telescope.builtin')

-- finder keybinds
vim.keymap.set('n', '<leader>ff', builtin.find_files)

-- vim keybinds
vim.keymap.set('n', '<leader>fb', builtin.buffers)

-- git keybinds (maybe remove these? they don't feel very useful)
vim.keymap.set('n', '<leader>fgf', builtin.git_files)
vim.keymap.set('n', '<leader>fgc', builtin.git_commits)
vim.keymap.set('n', '<leader>fgs', builtin.git_status)

-- lsp keybinds
vim.keymap.set('n', '<leader>ffr', builtin.lsp_references)
vim.keymap.set('n', '<leader>ffi', builtin.lsp_implementations)
vim.keymap.set('n', '<leader>ffd', builtin.lsp_definitions)
vim.keymap.set('n', '<leader>fft', builtin.lsp_type_definitions)

