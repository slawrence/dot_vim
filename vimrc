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
set ignorecase
set smartcase

"backupsettings
set nobackup
set noswapfile

"backspace - make it work like most apps
set backspace=2

"no sounds
set noerrorbells

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" status line settings
set laststatus=2    "show status line always

set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P                        " percentage of file


"-----------------------
" Custom shortcuts
"-----------------------
let mapleader=','
nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :so $MYVIMRC<cr>
nnoremap <silent> ,nt :NERDTreeFind<cr>
nmap ,n :NERDTreeToggle<cr>
nmap <silent> ,/ :nohlsearch<cr>
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>


" Mappings for resizing viewports
if bufwinnr(1)
    map + <C-W>+
    map - <C-W>-
    map <c-n> <c-w><
    map <c-m> <c-w>>
endif

"----------------------
" Plugin settings
"----------------------

"solarized theme settings
set background=light
colorscheme solarized
call togglebg#map("<F5>") "toggle background

"tern settings
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

"----------------------
" Font settings
"----------------------
if has("gui_running")
    if has("gui_win32")
        set guifont=Consolas:h15
    else
        set guifont=Menlo:h15
    endif
endif

"----------------------
" Column length
"----------------------
if exists('+colorcolumn')
    set colorcolumn=80
else
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%80v.\+/
end
