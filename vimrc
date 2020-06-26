" A sensible vimrc for the full-stack dev., especially in JavaEE + Node.js.
"
" Please note that the following settings are some default that I used for
" years. However it might be not the case for you (and your environment). I
" highly encourage to change/adapt the vimrc to your own needs. Think of a
" vimrc as a garden that needs to be maintained and fostered throughout years.
"
" 'Keep it clean and useful. - Fatih Arslan' 'Get things done. - Linus
" Torvalds' 'Learn it detailed and apply what you have learned. - Forrest Lyu"

" vim-plug: minimalist vim plug manager Specify a directory for plugins
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
"
"""""""""""""""""""""""""
" 	    Config		    "	
"""""""""""""""""""""""""
" Initialize plugin system
call plug#end() set nocompatible		" Make Vim behave in a more useful way.
set noswapfile			" Don't use swapfiles for the buffer.  set nobackup
" Don't backup before overwriting a file.

filetype off			" Reset filetype detection first ...  filetype plugin
indent on	
                        " ... and enable filetype detection.

set encoding=utf-8		" Set default encoding to UTF-8.  set ttyfast
" Indicate fast terminal conn. for faster
                        " redraw.
set textwidth=0		    " No limit the width of the line.  set nolinebreak
" Wrap long lines at a character.  set laststatus=0		" Never show status
line.  set autoread			" Auto read files that have been changed outside
                        " of Vim.
set autowrite			" Auto write the contents of the file before
                        " execute :next, :last, :make, etc.
set autoindent		    " Copy indent from current line when starting a
                        " new line.
set backspace=indent,eol,start	
                        " Make the key 'backspace' more powerful.
set incsearch			" While typing a search command, show where the
                        " pattern, as it was typed so far.
set hlsearch			" Highlight the search pattern.  set ignorecase
" Ignore case in search patterns.  set smartcase			" Override the
'ignorecase' option if the search
                        " patern cantains upper case characters.
set noerrorbells		" Don't ring the bell for error messages.  set nonumber
" Don't show line number.  set showcmd			    " Show what I'm typing.
set ruler			    " Show the line and column number of the cursor
position.  set splitright			" New window will be put in right of the
current one.  set splitbelow			" New window will be put in the below
of the current one.  set hidden			    " A buffer becomes hidden when it
is abandoned.  set fileformats=unix,dos,mac	
                        " Prefer 'CR' tailing delimiter (DOS, 'CR LF')
set noshowmatch			" When a bracket is inserted, don't jump to the
matching one.  set showmode			" Show mode in the below.  set
completeopt=menu,menuone	
                        " Use the popop menu even in one match.
set pumheight=10		" popup menu height.  set nocursorcolumn		" Make
screen redrawing faster.  set nocursorline set lazyredraw			" Wait to
redraw.

set background=dark colorscheme gruvbox

" Redefine tab key as (up to) 4 spaces for indenting files.
set tabstop=4			" Set the maximum width of an tab.  set softtabstop=0
set expandtab			" Make tab key insert space instade of tab.  set
shiftwidth=4		" Set an indent correspond to a single tab.  set smarttab
" Make the tab key insert spaces to go to the
                        " next indent of the next tabstop.

"""""""""""""""""""""""""
" 	    Mapping		    "
"""""""""""""""""""""""""
" To define a mapping key comma ','.
let mapleader = ","

" To quickly save & quit files.
nnoremap <leader>w :w<Cr> nnoremap <leader>q :wq<Cr> inoremap <leader>w
<Esc>:w<Cr> inoremap <leader>q <Esc>:wq<Cr>

"""""""""""""""""""""""""
" Plugins management	"
"""""""""""""""""""""""""
" Map a specific key or shortcupt to invoke nerdtree plugin.
nnoremap <leader>t :NERDTreeToggle<Cr>

" Setup vim-github-dashboard variable
let g:github_dashboard = { 'username': 'forrest-lyu', 'password': $GITHUB_TOKEN
}

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap vea <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap vea <Plug>(EasyAlign)

" Toggle the tagbar window
nnoremap <leader>o :TagbarToggle<Cr>

"""""""""""""""""""""""""
" 	    Scripts	        "
"""""""""""""""""""""""""
