" ================================
" Welcome to Kris' vimrc file
" ================================

" # install vundle first: 
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
"
" # then, open Vim, and run
" :PluginInstall
"
" Then uncomment lines using Vundle

" --------------------------------
" Plugins
" --------------------------------
set nocompatible              " be vi iMproved, not vi.  required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim   " uncomment for Vundle
" call vundle#begin()                 " uncomment for Vundle

" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim' " uncomment to use Vundle


" Plugins
" plugin are on GitHub repo

"Plugin 'vim-airline/vim-airline'   " Nice Status Bar - uncomment for Vundle
"Plugin 'arcticicestudio/nord-vim'  " Nord Color Scheme

" All of your Plugins must be added before the following line
" call vundle#end() " uncomment for Vundle
" filetype plugin indent on  " uncomment for Vundle


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
"colorscheme nord
colorscheme elflord



" < - - - -    Below Comments only to use Nord Color Scheme ...
"              https://www.nordtheme.com/
" # If using Nord Color Scheme, uncomment lines below
" # Setup Nord Color Scheme across apps (vim, sublime, tmux)
" 
" # Make Directories Oneliner:
" mkdir -p  ~/.vim/colors && mkdir -p  ~/.vim/autoload/airline/themes
" 
" # Curl nord color files
" curl https://raw.githubusercontent.com/arcticicestudio/nord-vim/master/colors/nord.vim >> ~/.vim/" colors/color.vim && curl https://raw.githubusercontent.com/arcticicestudio/nord-vim/master/" autoload/airline/themes/nord.vim >> ~/.vim/autoload/airline/themes/color.vim
" 
" - - - - >
