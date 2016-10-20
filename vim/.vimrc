""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup Vim-Plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" CtrlP : Fuzzy open files
Plug 'ctrlpvim/ctrlp.vim'

" Fugitive : git wrapper
Plug 'tpope/vim-fugitive'

" Gruvbox Theme
Plug 'morhetz/gruvbox'

" Add plugins to &runtimepath
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remove cruft
set nocompatible

" Remember 10000(max) commands
set history=10000

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Set leader to space
let mapleader = "\<Space>"

" Make backspace work over indent/eol/start
set backspace=indent,eol,start

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Keep abandonned buffers in memory
set hidden

" Set to auto read when a file is changed from the outside
set autoread

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme gruvbox
let g:gruvbox_invert_selection=0

" Always show current position ( eg. 18,1 )
set ruler

" Highlight current line
set cursorline 

" Display line numbers
set number

" Force 1 line cmdheigh
set cmdheight=1

" Highlight matching [] {} ()
set showmatch

" Search
set incsearch " Incremental search
set hlsearch  " Highlight search results
nnoremap <CR> :let @/ = ""<CR> 

" Enable syntax highlighting
syntax enable

" Enable filetype based indentation
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Linebreak on 80 characters
set lbr
set tw=80

" Auto indent
set ai
" Smart indent
set si
" Wrap lines
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Stack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <silent> <Leader>sb :!stack build<CR>
map <silent> <Leader>st :!stack test<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" <leader>o : Fuzzy open file
map <silent> <Leader>o :CtrlP()<CR>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufReadPost *
  \ if line("'\"") > 0  && line("'\"")  <= line("$") |
  \   exe "normal g`\"" |
  \ endif
