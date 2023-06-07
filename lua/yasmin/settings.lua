-- general
vim.opt.clipboard = "unnamedplus"
-- set colorscheme
vim.o.termguicolors = true

-- tab and indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- timings
vim.opt.updatetime = 50 
vim.opt.timeout = true
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 10

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- numbered lines
vim.opt.number = true
vim.opt.relativenumber = true

-- undo history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
