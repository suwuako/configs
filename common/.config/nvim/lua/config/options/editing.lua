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
vim.g.diagnostics_active = true
<<<<<<< HEAD

=======
>>>>>>> 79b141a (config)
vim.diagnostic.config({
  virtual_text = {
    -- Set to true to enable virtual text for diagnostics
    -- You can also configure other options like 'prefix' or 'source' here
    -- For example:
    -- prefix = ' ', -- Add a space before the diagnostic message
    -- source = "always", -- Display virtual text even if there are many diagnostics
    enable = true,
  },
  -- Other diagnostic settings can go here, e.g., for signs or floating windows
  signs = true, -- Show signs in the sign column
  update_in_insert = true, -- Update diagnostics in insert mode (can be messy)
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

-- You might also want to set this within your LspAttach autocmd for specific LSPs
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("LspDiagnostics", { clear = true }),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client.name == "your_lsp_server_name" then -- Replace with your LSP server name
      vim.diagnostic.config({
        virtual_text = { enable = true },
      }, args.buf)
    end
  end,
})
