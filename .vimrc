set runtimepath+=$HOME/.vim/ftplugin
colorscheme desert
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect() "see github.com/tpope/vim-pathogen, vim plugin manager
filetype plugin indent on
set number
syntax on

"toggle configs
let disable_lint = 1

"search settings
set hlsearch
"set incsearch

"4 space tabs
set expandtab
set tabstop=4
set shiftwidth=4

"no sounds
set visualbell           " don't beep
set noerrorbells         " don't beep

"backup settings
set nobackup
set noswapfile

"highlight whitespacing
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

"Toggle so vim doesn't try to autoindent pasted text
"set pastetoggle=<F2>

"load up nerdtree in the trademark project
"autocmd VimEnter * NERDTree ~/

"keyboard mappings
let mapleader=','

"workaround so the cursor just jumps down properly on long wrapped lines
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h<CR>
map <C-j> <C-w>j<CR>
map <C-k> <C-w>k<CR>
map <C-l> <C-w>l<CR>

"clear search highlighting
nmap <silent> ,/ :nohlsearch<CR>

"Mappings to edit and reload .vimrc
nmap <silent> <leader>ev :edit ~/.vimrc<CR>
nmap <silent> <leader>sv :source ~/.vimrc<CR>

"Resize window mappings, height resizing is not working 
nnoremap <silent> + :vertical resize +10<CR>
nnoremap <silent> - :vertical resize -10<CR>
nnoremap <silent> <C-+> :resize +10<CR>
nnoremap <silent> <C--> :resize -10<CR>

if exists(":Tabularize")
    nmap <leader>t= :Tabularize /=<CR>
    vmap <leader>t= :Tabularize /=<CR>
    nmap <leader>t: :Tabularize /:\zs<CR>
    vmap <leader>t: :Tabularize /:\zs<CR>
endif
