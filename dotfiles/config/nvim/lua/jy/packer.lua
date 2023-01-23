vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'tpope/vim-surround'
    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-commentary'
    use {'neoclide/coc.nvim', branch = 'release'}
    use 'vim-airline/vim-airline'
    use 'preservim/nerdtree'

end)

