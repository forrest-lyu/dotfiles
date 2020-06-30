" A sophisticated vim config file for the full-stack dev.

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Colorscheme
Plug 'morhetz/gruvbox'

" Initialized plugin system
call plug#end()

set nocompatible
set nobackup
set noswapfile
set textwidth=0
set nolinebreak

set background=dark
colorscheme gruvbox

" Redefine a tab equals a indent as (up to ) 4 spaces.
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

let mapleader=","

nnoremap <leader>w :w<Cr>
nnoremap <leader>q :wq<Cr>
inoremap <leader>w <Esc>:w<Cr>
inoremap <leader>q <Esc>:wq<Cr>
