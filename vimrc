" A vimrc file

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Retro groove color scheme for Vim
Plug 'morhetz/gruvbox'

" A class outline viewer
Plug 'majutsushi/tagbar'

" Initialize plugin system
call plug#end()

set nocompatible
set noswapfile
set nobackup
set textwidth=80


set background=dark
colorscheme gruvbox

let mapleader = ","

nnoremap <leader>w :w<Cr>
nnoremap <leader>q :wq<Cr>
inoremap <leader>w <Esc>:w<Cr>
inoremap <leader>q <Esc>:wq<Cr>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Toggle the tagbar window
nnoremap <leader>o :TagbarToggle<Cr>
