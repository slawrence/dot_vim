dot_vim
=======

## Installation

On windows, add a HOME path variable with the following command:

`setx HOME C:\path\to\home\`

The HOME folder should be where the following commands are executed (unix/cygwin):

1. `git clone http://github.com/slawrence/dot_vim.git ~/.vim`
2. `cd ~/.vim`
3. `git submodule init`
4. `git submodule update`
5. Link vimrc
    * Installing on linux/macos
        * `ln -s ~/.vim/vimrc ~/.vimrc`
    * Installing on windows (with sufficient privileges to execute mklink commands)
        * From $HOME: `mklink _vimrc ".vim/vimrc"`
        * Create a directory symbolic link for gVIm (from gVim installation, i.e. C:\Program Files\Vim)
            1. Remove old vimfiles dir and _vimrc file
            2. `mklink _vimrc "%HOME\.vim\vimrc"`
            3. `mklink /D vimfiles %HOME%\.vim`
    * Installing on windows without mklink access:
        * `cp ~/.vim/_vimrc ~/_vimrc`
        * For gVim manually copy bundle folder to vim directory

### Optional Dependencies

#### Ctags

* Windows
    1. Download Ctags binary for windows
        * http://sourceforge.net/projects/ctags/
        * Add to PATH
        * Generate tags in a directory in vim by `!ctags -R`

## Settings

## Submodules/Plugins and Settings

### pathogen

Vim Plugin manager. Installed as a pathogen module itself so it must be added to the vimrc file: `runtime bundle/vim-pathogen/autoload/pathogen.vim`

### closetag

Assists when writing html/xml files by closing tags.

### delimitmate

Provides auto closing of quotes, parenthesis, brackets, etc.

### fugitive

Vim/Git integration

### nerdcommenter

Provides commenting based on filetype shortcuts.

* `,c` Toggles the selected line(s)
* `,ci` Toggles the current line individually

### nerdtree

FileBrowsing

* `,nt` Open a tree in the current buffer's directory

### solarized

Theme

### tabular

Shortcuts for organizing.

### unimpaired

Shortcuts

* `[b` or `]b` Previous/Next buffer

### vim-javascript

Provides syntax and indent plugins for javascript.

### vim-powerline

Improved powerline.

