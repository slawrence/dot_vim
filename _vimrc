" Use this file in windows environments where a symbolic link
" is not possible

" Following is necessary because cygwin paths get saved differently
" /cygdrive/c/file vs. C:\file
if has('gui_running')
    let g:NERDTreeBookmarksFile = expand('$HOME').'\.NERDTreeBookmarksGvim'
    cd $HOME
endif
source $HOME/.vim/vimrc
