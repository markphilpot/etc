" ============ Pathogen ================
call pathogen#infect()
call pathogen#helptags()

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

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
syntax enable

set number

" ============ Language Specific =======
autocmd BufWritePre *.py normal m`:%s/\s\+$//e`
let python_highlight_all = 1

" ============ Solarized ===============
set background=dark
colorscheme solarized

set laststatus=2
