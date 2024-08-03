return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls", "rust_analyzer" },
            }
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')

            lspconfig.lua_ls.setup ({})
            lspconfig.clangd.setup ({})
        end
    },

    -- AUTOCOMPLETE + SNIPPETS
    {
        "hrsh7th/cmp-buffer",
        config = function()
            require('cmp').setup({
              sources = {
                { name = 'buffer' },
              },
            })
        end
    },
    {
        "hrsh7th/cmp-path",
        config = function()
            require'cmp'.setup {
              sources = {
                { name = 'path' }
              }
            }
        end
    },
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
    },
    {
      'hrsh7th/nvim-cmp',
      config = function ()
        require'cmp'.setup {
        snippet = {
          expand = function(args)
            require'luasnip'.lsp_expand(args.body)
          end
        },

        sources = {
          { name = 'luasnip' },
          -- more sources
        },
      }
      end
    },
    { 'saadparwaiz1/cmp_luasnip' },
    {
        "hrsh7th/cmp-nvim-lsp",
        config = function()
            require'cmp'.setup {
              sources = {
                { name = 'nvim_lsp' }
              }
            }

            -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            -- An example for configuring `clangd` LSP to use nvim-cmp as a completion engine
            require('lspconfig').clangd.setup {
              capabilities = capabilities,
            }
        end
    },
    { "rafamadriz/friendly-snippets" }
}
