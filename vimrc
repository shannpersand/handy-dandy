
set number
set relativenumber
set hlsearch
set expandtab
set tabstop=2
set shiftwidth=2
retab

execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
    set background=dark
    colorscheme desert 

let mapleader = "\\"
nmap <leader>nt :NERDTree<cr>
