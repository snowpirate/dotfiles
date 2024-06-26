" # install vundle first: 
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" # Setup Nord Color Scheme across apps (vim, sublime, tmux)
" 
" 
" # Make Directories Oneliner:
" mkdir -p  ~/.vim/colors && mkdir -p  ~/.vim/autoload/airline/themes
" 
" 
" # Curl nord color files
" curl https://raw.githubusercontent.com/arcticicestudio/nord-vim/master/colors/nord.vim >> ~/.vim/" colors/color.vim && curl https://raw.githubusercontent.com/arcticicestudio/nord-vim/master/" autoload/airline/themes/nord.vim >> ~/.vim/autoload/airline/themes/color.vim
" 
" 
" # then, open Vim, and run
" :PluginInstall






" ================================
" Welcome to Kris' vimrc file
" ================================


" --------------------------------
" Plugins
" --------------------------------
set nocompatible              " be vi iMproved, not vi.  required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" Plugins
" plugin on GitHub repo

Plugin 'vim-airline/vim-airline'
Plugin 'arcticicestudio/nord-vim'  " Nord Color Scheme

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on


" --------------------------------
" Basic stuff
" --------------------------------
set ruler           " Show file stats
set number          " Show Line numbers
set hlsearch        " Highlight whole word when searching
set ignorecase      " Ignore case when searching...
set smartcase       " ...except when serach query contains a capital letter
set backspace=indent,eol,start     "fix the backspace not working


" --------------------------------
" Pretty things
" --------------------------------
set t_Co=256
syntax on
colorscheme nord
