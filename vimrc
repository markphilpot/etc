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

set wildmenu                " visual autocomplete for command menu
set wildignore=*.o,*~,*.pyc,.DS_Store

set encoding=utf8

set nobackup
set noswapfile

set mouse=a

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

" ============ Shortcuts ================
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
map <C-y> "*y

" ============ Trial ==========
set cursorline          " highlight current line
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
let mapleader=","       " leader is comma

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" open ag.vim
nnoremap <leader>a :Ag

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

nnoremap <leader>gb :Gblame<CR>
set backspace=indent,eol,start

" Reference
"
" :set number/nonumber
" :so % " Reload vimrc
