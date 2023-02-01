-- Line number and relative line number
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Backup options
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.cache/undodir"
vim.opt.undofile = true
vim.opt.swapfile = false

-- Smart indentation
vim.opt.smartindent = true

-- Seach highlighting and incremental search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- 24 bit colors
vim.opt.termguicolors = true

-- Netrw options
vim.g.netrw_bufsettings = "noma nomod nonu nowrap ro buflisted"
