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

" NeoComplete : better autocomplete"
Plug 'Shougo/neocomplete.vim'

" VimProc : Async lib
Plug 'Shougo/vimproc.vim' , { 'do': 'make' }

" GHCMod : Haskell helper
Plug 'eagletmt/ghcmod-vim'

" Syntastic : Syntax checker
Plug 'scrooloose/syntastic'

" Togglelist : toggle location list
Plug 'milkypostman/vim-togglelist'

" Airline : status line
Plug 'vim-airline/vim-airline'

" Airline theme
Plug 'vim-airline/vim-airline-themes'

" Solarized Theme
Plug 'altercation/vim-colors-solarized'

" Fugitive : git wrapper
Plug 'tpope/vim-fugitive'

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

" Close NERDTree when it is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GHCMod
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" tw : insert type
map <silent> tw :GhcModTypeInsert<CR>
" ts : split case
map <silent> ts :GhcModSplitFunCase<CR>
" tq : show type
map <silent> tq :GhcModType<CR>
" te : clear type
map <silent> te :GhcModTypeClear<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" <leader>s : toggle syntastic
map <Leader>s :SyntasticToggleMode<CR>


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ToggleList
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <script> <silent> <leader>l :call ToggleLocationList()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status Line / Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set laststatus=2

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" Integrate syntastic with airline
let g:airline#extensions#syntastic#enabled = 1
" Display current git branch
let g:airline#extensions#branch#enabled = 1
" User powerline symbols
let g:airline_powerline_fonts = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Solarized
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
colorscheme solarized
