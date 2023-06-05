-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
    -- packer can manage itself
    use 'wbthomason/packer.nvim'


    -- escape remap (avoid delay)
    use {
      "max397574/better-escape.nvim",
      config = function()
        require("better_escape").setup {
            mapping = { "kj" }, -- a table with mappings to use
            timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
            clear_empty_lines = false, -- clear line after escaping if there is only whitespace
            keys = "<Esc>", -- keys used for escaping, if it is a function will use the result everytime
        }
          end
    }

    -- terminal
    use {
        "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup {
            size = 50,
            open_mapping = [[<leader>tt]],
            terminal_mappings = true,
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = '1',
            start_in_insert = true,
            persist_size = true,
            persist_mode = true,
            direction = 'float',
            auto_scroll = true
        }
        end
    }

    -- fuzy finder
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- syntax highlightning
    use {
        'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'}
    } 

    -- theme
    use({
        'mhartington/oceanic-next',
        as = 'oceanic-next',
        config = function()
            vim.cmd('colorscheme OceanicNext')
        end
    })

end)