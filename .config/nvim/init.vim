" Vundle config & Plugins
" Vundle install:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" {{{
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'              " Lets Vundle handle Vundle

Plugin 'tpope/vim-surround'                " Surround text objects
Plugin 'godlygeek/tabular'                 " Text aligning
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on                  "}}}

" General Settings
" {{{
set colorcolumn=80
set tabstop=4                              " Default tab width
set shiftwidth=4                           " Default indent width for >>
set expandtab                              " Replace tab with spaces
set wildmenu                               " Enable wildmenu
set showmatch                              " Show matching braces, brackets etc.
set nobackup                               " Disable backup files
set nowb                                   " Disable backups
set ai                                     " Auto indent
set si                                     " Smart indent
set t_Co=256                               " Terminal colours
set foldmethod=marker                      " Set fold method
set ruler                                  " Show lines and columns
set autoread                               " Automatically reload file if externally changed
set showmode                               " Show current mode in status line
set backspace=2                            " Make backspace behave correctly
set encoding=utf-8
set grepprg=ack
set formatprg=par
set relativenumber

let NERDTreeIgnore = ['\.meta$', '\.cs.meta$', '\.asset$']
" }}}

" Visual
" {{{
syntax enable                              " Enable syntax highlighting
colorscheme gruvbox                        " Set default colorscheme
set background=dark                        " Set colours for dark background
"set termguicolors                        
" }}}

" Custom Binds
" {{{
" Remap leader key to space
nnoremap <SPACE> <NOP>
let mapleader="\<SPACE>"

" Table format
nnoremap  <leader><TAB> :Tabularize /
vmap      <leader><TAB> :Tabularize /

nnoremap <leader>b :ls<CR>:b
nnoremap <leader>w :%s/\s\+$//e <CR>
nnoremap <leader>t :NERTreeToggle <CR>
"}}}
