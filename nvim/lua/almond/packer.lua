-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself

  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

use({
    'ellisonleao/gruvbox.nvim',
    as = 'gruvbox',
    config = function()
        vim.cmd('colorscheme gruvbox')
    end
})
use ({"ziontee113/color-picker.nvim",
    config = function()
        require("color-picker")
    end,
})
use('vim-airline/vim-airline')
use({'nvim-orgmode/orgmode', config = function()
  require('orgmode').setup{}
end,
})
use('vim-airline/vim-airline-themes')

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

use('mbbill/undotree')
use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}
use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp', require('cmp').setup({
        sources = {
            {name = 'orgmode'}
        }
        })
    },
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
  }
}

end)
