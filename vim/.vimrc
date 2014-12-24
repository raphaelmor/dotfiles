execute pathogen#infect()

syntax on
set incsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
filetype plugin indent on
set autoindent 
set nu
colorscheme Tomorrow-Night-Eighties
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <silent> <C-n> :NERDTreeFocus<CR>
au BufReadPost *.ejs set syntax=html
au BufRead,BufNewFile *.md set filetype=markdown
