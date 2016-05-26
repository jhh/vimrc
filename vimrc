set background=light
filetype off                  " force reloading after Vundle loads

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()
filetype plugin indent on    " required, enable detection, plugins and indenting
