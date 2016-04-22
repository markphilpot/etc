" ============ Pathogen ================
call pathogen#infect()
call pathogen#helptags()

" ============ Indentation =============
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

" ============ General =================
set autoread

set wildmenu
set wildignore=*.o,*~,*.pyc,.DS_Store

set encoding=utf8

set nobackup
set noswapfile

" ============ Syntax ==================
syntax on
syntax enable

set number

" Show matching brackets and blink 2 tenths of second
set showmatch
set mat=2

" ============ Language Specific =======
autocmd BufWritePre *.py normal m`:%s/\s\+$//e`
let python_highlight_all = 1

" ============ Solarized ===============
set background=dark
colorscheme solarized

set laststatus=2

" ============ Nerdtree ================
map <C-n> :NERDTreeToggle<CR>
