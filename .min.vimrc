set nocompatible

" Use pathogen to load plugins from bundle directory
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype on
filetype plugin on
filetype indent on

"solarized theme settings
if has('gui_running')
    set background=dark
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
    let g:solarized_contrast="high"
    let g:solarized_visibility="high"
    colorscheme solarized
endif

syntax on
set number

"4 space tabs
set expandtab
set tabstop=4
set shiftwidth=4

"highlight whitespacing
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set hlsearch
set incsearch

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :so $MYVIMRC<cr>
nmap <silent> ,nt :NERDTreeFind<cr>
nmap <silent> ,/ :nohlsearch<cr>

"Environment specific settings
cd $HOME
nmap <silent> ,gw :NERDTree webapp<cr>
