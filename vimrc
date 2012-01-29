" ============ Pathogen ================
call pathogen#infect()

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

" ============ Syntax ==================
syntax on

set number

" ============ Language Specific =======
autocmd BufWritePre *.py normal m`:%s/\s\+$//e`
let python_highlight_all = 1

" ============ Solarized ===============
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
