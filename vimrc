" A sensible vimrc for the full-stack dev., especially in JavaEE + Node.js.
"
" Please note that the following settings are some default that I used for
" years. However it might be not the case for you (and your environment). I
" highly encourage to change/adapt the vimrc to your own needs. Think of a vimrc
" as a garden that needs to be maintained and fostered throughout years.
"
" 'Keep it clean and useful. - Fatih Arslan'
" 'Get things done. - Linus Torvalds'
" 'Learn it detailed and apply what you have learned. - Forrest Lyu"

" vim-plug: minimalist vim plug manager
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" The fancy start screen for Vim.
Plug 'mhinz/vim-startify'

" Retro groove color scheme for Vim.
Plug 'morhetz/gruvbox'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" A class outline viewer
Plug 'majutsushi/tagbar'

" A tree explorer for Vim.
" - browse complex directory hierarchies.
" - quickly open files.
" - perform basic file system operations.
Plug 'scrooloose/nerdtree'

" Browser GitHub events (user dashboard, user/repo activity) in Vim.
Plug 'junegunn/vim-github-dashboard'

" Initialize plugin system
call plug#end()
set noswapfile			" Don't use swapfiles for the buffer.
set nobackup			" Don't backup before overwriting a file.
set nocompatible		" Make Vim behave in a more useful way.
filetype off			" Reset filetype detection first ...
filetype plugin indent on	" ... and enable filetype detection.
set ttyfast			" Indicate fast terminal conn. for faster
				" redraw.
set laststatus=0		" Never show status line.
set encoding=utf-8		" Set default encoding to UTF-8.
set autoread
set autowrite



set textwidth=80


set background=dark
colorscheme gruvbox

let mapleader = ","

nnoremap <leader>w :w<Cr>
nnoremap <leader>q :wq<Cr>
inoremap <leader>w <Esc>:w<Cr>
inoremap <leader>q <Esc>:wq<Cr>

" Map a specific key or shortcupt to invoke nerdtree plugin.
nnoremap <leader>t :NERDTreeToggle<Cr>

" AndrewRadev/splitjoin.vim

" Setup vim-github-dashboard variable
let g:github_dashboard = { 'username': 'forrest-lyu', 'password': $GITHUB_TOKEN }

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap vea <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap vea <Plug>(EasyAlign)

" Toggle the tagbar window
nnoremap <leader>o :TagbarToggle<Cr>
