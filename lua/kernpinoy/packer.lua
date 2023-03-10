-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'stevearc/aerial.nvim',
        config = function() require('aerial').setup() end
    }

  -- Best plugin: Harpoon!
    use 'ThePrimeagen/harpoon'

    -- Change colorscheme
    use ({
        "catppuccin/nvim",
        as = "catppuccin",
        config = vim.cmd.colorscheme "catppuccin"
    })

    use ({
        'rcarriga/nvim-notify',
        config = function ()
           vim.notify = require("notify")
        end
    })

    -- Treesitter
    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})

    -- Undotree
    use('mbbill/undotree')

    -- Git integrations
    use('tpope/vim-fugitive')

    -- LSP 
    use {
        'VonHeikemen/lsp-zero.nvim',
       branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    -- UI stuffs
    use 'nvim-tree/nvim-web-devicons'
    use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

    -- Status line
    use 'feline-nvim/feline.nvim'

    -- Toggle terminal
    use {
        "akinsho/toggleterm.nvim",
        tag = '*', config = function()
            require("toggleterm").setup()
        end
    }

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
end)
