-- indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- search
vim.opt.hlsearch = true
vim.opt.incsearch = true
    -- case insensitive
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- sync clipboard
vim.opt.clipboard = "unnamedplus"

-- display
vim.opt.wrap = false

-- window configs
vim.opt.splitright = true
vim.opt.splitbelow = true

-- trailing chars
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- tags
vim.opt.tags = ".tags,tags,./.tags,./tags,~/.tags"

-- folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- max length
vim.opt.textwidth = 90
vim.opt.linebreak = true
