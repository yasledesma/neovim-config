-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
    -- packer can manage itself
    use 'wbthomason/packer.nvim'

    -- toggle comments
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    
    -- escape remap (avoid delay)
    use "max397574/better-escape.nvim"

    -- fuzy finder
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- syntax highlightning
    use (
        'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'}
    ) 

    -- theme
    use({
        'mhartington/oceanic-next',
        as = 'oceanic-next',
        config = function()
            vim.cmd('colorscheme OceanicNext')
        end
    })

    -- status bar
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

end)
