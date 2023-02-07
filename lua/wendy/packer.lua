-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
        -- LSP Zero setup
        use {
            'VonHeikemen/lsp-zero.nvim',
            requires = {
                -- LSP Support
                { 'neovim/nvim-lspconfig' },
                { 'williamboman/mason.nvim' },
                { 'williamboman/mason-lspconfig.nvim' },
                { 'jose-elias-alvarez/null-ls.nvim' },



                -- Autocompletion
                { 'hrsh7th/nvim-cmp' },
                { 'hrsh7th/cmp-buffer' },
                { 'hrsh7th/cmp-path' },
                { 'saadparwaiz1/cmp_luasnip' },
                { 'hrsh7th/cmp-nvim-lsp' },
                { 'hrsh7th/cmp-nvim-lua' },

                -- Snippets
                { 'L3MON4D3/LuaSnip' },
                { 'rafamadriz/friendly-snippets' },
            }
        }
        -- LSP Related
        use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
        use('nvim-treesitter/playground')
        use('jwalton512/vim-blade')
        use('mattn/emmet-vim')
        use('ahmedkhalf/project.nvim')
        -- Nice to have
        use("numToStr/Comment.nvim")
        use("max397574/better-escape.nvim")
        use("tpope/vim-repeat")
        use("tpope/vim-surround")
        use('mbbill/undotree')
        use('windwp/nvim-autopairs')

        -- Navigation
        -- using packer.nvim
        use { 'akinsho/bufferline.nvim', tag = "v3.*",
            requires = 'nvim-tree/nvim-web-devicons' }
        use("ggandor/leap.nvim")
        use("stevearc/aerial.nvim")
        use("junegunn/vim-peekaboo")
        use('mrjones2014/smart-splits.nvim')
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.0',
            -- or                            , branch = '0.1.x',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }
        use('theprimeagen/harpoon')
        use {
            "folke/trouble.nvim",
            requires = "kyazdani42/nvim-web-devicons"
        }
        use { 'nvim-telescope/telescope-ui-select.nvim' }

        -- Aesthetics
        use 'sainnhe/sonokai'
        use("lukas-reineke/indent-blankline.nvim")
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

        -- Other
        use('tpope/vim-fugitive')
        use("lewis6991/impatient.nvim")
        use("github/copilot.vim")
        use("folke/zen-mode.nvim")
    end)
