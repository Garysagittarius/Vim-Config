" Vim configuration file

" set the leader to space
let mapleader = " "

" keymap for the Netrw
nnoremap <Leader>ff :Ex<cr>

" Set compatibility to vim only
colorscheme habamax 
set nocompatible

" Automatic wrapping
set wrap 

" Encoding
set encoding=utf-8
" show line numbers
set relativenumber

" show status bar
set laststatus=2

" set indent
set tabstop=4
set shiftwidth=4
set autoindent

" set syntax highlighting
syntax on

" set cursor line
set cursorline
:highlight Cursorline cterm=bold ctermbg=black

call plug#begin()
" Using Vim-Plug
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'nanotech/jellybeans.vim'
Plug 'sbdchd/neoformat'
call plug#end()

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

if !has("gui running")
		set t_Co=256
endif

" enable true colors support
set termguicolors


" tab complition for the coc
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
