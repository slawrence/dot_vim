"--------------------------------
" Basic configuration settings
" -------------------------------

set nocompatible

" Use pathogen to load plugins from bundle directory
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

syntax on
set encoding=utf-8 " Necessary to show Unicode glyphs
filetype plugin indent on

set autowrite
set number

"4 space tabs
set expandtab
set tabstop=4
set shiftwidth=4

"highlight whitespacing
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

"search settings
set hlsearch
set incsearch

"backupsettings
set nobackup
set noswapfile

"no sounds
set visualbell
set noerrorbells

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

"-----------------------
" Custom shortcuts
"-----------------------
let mapleader=','
nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :so $MYVIMRC<cr>
nmap <silent> ,nt :NERDTreeFind<cr>
nmap <silent> ,/ :nohlsearch<cr>

"----------------------
" Plugin settings
"----------------------

"solarized theme settings
if has('gui_running')
    set background=dark
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
    let g:solarized_contrast="high"
    let g:solarized_visibility="high"
    colorscheme solarized
endif

"-------------------------------
" Environment specific settings
" TODO: Move these out
"-------------------------------
cd $HOME
nmap <silent> ,gw :NERDTree webapp<cr>
