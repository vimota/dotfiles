" Enable modern Vim features not compatible with Vi spec.
set nocompatible

set backspace=2 tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
colorscheme monokai

imap jj <Esc>

" Open file pane
nmap ,f :NERDTreeToggle<CR><CR>
" Fuzzy search
nmap ,<Space> :CtrlP<CR>
" Easier new tab
nmap ,n <Esc>:tabnew<CR>
nmap ,t <Esc>:tabnew<CR>

" Easier navigation between panes
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

" Line number configuration
set nu
set numberwidth=3

" allow mouse gestures
set mouse=a

" Split to right and bottom
set splitbelow
set splitright

let mapleader = "\<Space>"


" Install vundle packages
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'valloric/youcompleteme'

call vundle#end()
filetype plugin indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
