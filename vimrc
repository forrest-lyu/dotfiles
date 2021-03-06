" A sophisticated vim config for the full-stack dev, especially in Java EE.
" 
" Please note that the following settings are some default that I used for
" years. However it might be not the case for you (and your environment). I
" highly encourage to change/adapot the vimrc to your own needs. Think of a
" vimrc as a garden that needs to be maintained and fostered throughout years.
"
" 'Keep it clean and useful. - Fatih Arslan'
" 'Know what you are doing. - Forrest Lyu'

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()

"""""""""""""""""""""""""
"       Settings        "
"""""""""""""""""""""""""
set nocompatible            " Make Vim behave in a more useful way.
set nobackup                " Use 'writebackup', not 'nobackup'.
set writebackup             " Make a backup before overwriting a file.
                            " The backup is removed after the file was
                            "successfully written.
set noswapfile              " Don't use a swapfile for the buffer

filetype off                " Reset filetype detection
filetype plugin indent on   " ... and enable filetype detection

set encoding=utf-8
set fileformats=unix,dos,mac
set autoread                " Automatically read the file
set autowrite               " Automatically save before :next, :make etc
set hidden                  " Buffer should still exist if window is closed
set textwidth=0             " Ought to apply different textwidth rules by hand.
set background=dark
colorscheme gruvbox
set nonumber                " Don't show line number.
set nolinebreak             " Don't break long words in the edge of the screen.
set showcmd
set showmode
set colorcolumn=80
set incsearch
set hlsearch
set ignorecase
set smartcase
set splitright
set splitbelow
set nocursorcolumn
set nocursorline
set lazyredraw
set laststatus=0
set ttyfast
set ttymouse=xterm2
set ttyscroll=3
set noerrorbells
set noshowmatch
set autoindent
set backspace=indent,eol,start
set completeopt=menu,menuone
set pumheight=10

" Redefine a tab equals a indent as (up to ) 4 spaces.
set tabstop=4               " A <Tab> counts for 4 spaces.                   
set shiftwidth=4            " A indent equals to 4 spaces.
                            " A <Tab> equals to a indent.
set softtabstop=-1          " Number of spaces that a <Tab> counts for while
                            " perfoming editing (-1: use 'shiftwidth')
set expandtab               " Insert spaces instead of <Tab>
set smarttab                " A <Tab> in front of a line inserts blanks
                            " according to 'shiftwidth'

"""""""""""""""""""""""""
"       Mappings        "
"""""""""""""""""""""""""
let mapleader=","

nnoremap <leader>w :w<Cr>
nnoremap <leader>q :wq<Cr>
inoremap <leader>w <Esc>:w<Cr>
inoremap <leader>q <Esc>:wq<Cr>

"""""""""""""""""""""""""
"       Plugins         "
"""""""""""""""""""""""""

"""""""""""""""""""""""""
"       Scripts         "
"""""""""""""""""""""""""
