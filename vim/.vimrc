""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup Vim-Plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" CtrlP : Fuzzy open files
Plug 'ctrlpvim/ctrlp.vim'

" NERDTree : File finder
Plug 'scrooloose/nerdtree'

" Tabular : Align stuff
Plug 'godlygeek/tabular'

" SuperTab : Tab Completion"
Plug 'ervandew/supertab'

" Neco-GHC : smart Haskell autocomplete
Plug 'eagletmt/neco-ghc'

" Add plugins to &runtimepath
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Main screen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Always show current position ( eg. 18,1 )
set ruler

" Set to auto read when a file is changed from the outside
set autoread

" Enable syntax highlighting
syntax enable

" enable filetype based indentation
filetype plugin indent on

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Display line numbers
set number

" Set leader to space
let mapleader = "\<Space>"

" Make backspace work over ident/eol/start
set backspace=indent,eol,start

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

"Auto indent
set ai
"Smart indent
set si
"Wrap lines
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" <leader>o : Fuzzy open file
map <silent> <Leader>o :CtrlP()<CR>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" <leader>n : Toggle Tree
map <Leader>n :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabular
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:haskell_tabular = 1
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SuperTab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neco-GHC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
