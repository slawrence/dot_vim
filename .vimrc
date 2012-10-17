set runtimepath+=$HOME/.vim/ftplugin
colorscheme desert
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect() "see github.com/tpope/vim-pathogen, vim plugin manager
call pathogen#helptags()
filetype plugin indent on
filetype plugin on
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

"vim-powerline setting
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

"snipmate snippets
let g:snippet_dir = "~/.vim/bundle/snipmate-snippets/"

"closetag for html/xml - only load for the right filetypes
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

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

"toggle tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=40
nnoremap <leader>l :TagbarToggle<CR>

"NERDTree mappings
nnoremap <leader>nt :NERDTree tmng<CR>

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

"pretty print json by running it through python
map <leader>jp :%!python -m json.tool<CR>

"filetypes -- move to filetypes.vim??
au! BufRead,BufNewFile *.json set filetype=json
autocmd Syntax json source ~/.vim/bundle/json/syntax/json.vim
