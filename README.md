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
        * From $HOME: `mklink _vimrc .vim/vimrc`
        * Create a directory symbolic link for gVIm
            1. `mklink /D vimfiles %HOME%\.vim`
    * Installing on windows without mklink access:
	* Create `_vimrc` file in $HOME
	* Add content: `source $HOME/.vim/vimrc`
	* For gVim manually copy bundle folder to vim/vimfiles directory
	

## Settings

## Plugin Settings

## General Notes

