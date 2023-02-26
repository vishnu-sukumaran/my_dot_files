packer = require 'packer'

packer.startup(function()

    use 'wbthomason/packer.nvim'

    use "nvim-lua/plenary.nvim"

    use {
        "kyazdani42/nvim-web-devicons"
    }

    use {
        'nvim-lualine/lualine.nvim'
    }

    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            require("catppuccin").setup {
                flavour = "macchiato" -- mocha, macchiato, frappe, latte
            }
            vim.api.nvim_command "colorscheme catppuccin"
        end
    }

    use {
        'nvim-tree/nvim-tree.lua'
    }

    use { "williamboman/mason.nvim" }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
    }

    use {
        "tyru/open-browser.vim"
    }

    use {
        "aklt/plantuml-syntax"
    }
    
    use {
        "weirongxu/plantuml-previewer.vim"
    }

end)
