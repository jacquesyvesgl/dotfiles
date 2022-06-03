set title
set clipboard+=unnamedplus
set number
set guioptions=a
set mouse=a
set nocompatible

" Keep at least one line above/below cursor
set scrolloff=1
set sidescrolloff=5

set updatetime=100

let mapleader = " " "Map <leader> to space

call plug#begin(stdpath('data') . '/plugged')
"Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'jpalardy/vim-slime'
Plug 'lervag/vimtex'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
call plug#end()


" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" Tell vim-gitgutter where git is
let g:gitgutter_git_execurable = '/usr/bin/git'
