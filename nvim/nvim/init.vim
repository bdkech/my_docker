if &compatible
  set nocompatible
endif
set rtp+=/root/.config/nvim/bundle/Vundle.vim
call vundle#begin('/root/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'

" Custom plugins...
" EasyMotion - Allows <leader><leader>(b|e) to jump to (b)eginning or (end)
" of words.
Plugin 'easymotion/vim-easymotion'
" Ctrl-P - Fuzzy file search
Plugin 'kien/ctrlp.vim'
" Neomake build tool (mapped below to <c-b>)
Plugin 'benekastah/neomake'
" ALE linting
Plugin 'w0rp/ale'
" Autocomplete for python
" Remove extraneous whitespace when edit mode is exited
Plugin 'thirtythreeforty/lessspace.vim'
"
" LaTeX editing
Plugin 'LaTeX-Box-Team/LaTeX-Box'
"
" Status bar mods
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'

" Writing packages
Plugin 'plasticboy/vim-markdown'
Plugin 'junegunn/limelight.vim'

" Tab completion
Plugin 'ervandew/supertab'
" one stop shop for vim colorschemes.
Plugin 'flazz/vim-colorschemes'
" Dart syntax
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/goyo.vim'

" After all plugins...
call vundle#end()
filetype plugin indent on

""""""" Jedi-VIM """""""
" Don't mess up undo history
let g:jedi#show_call_signatures = "0"

" Required:
syntax enable
" Get default python version from interpreter in $PATH.
    let s:def_py = system('python3 -c '.shellescape('import sys; sys.stdout.write(str(sys.version_info[0]))'))
    if v:shell_error != 0 || !len(s:def_py)
        if !exists('g:jedi#squelch_py_warning')
            echohl WarningMsg
            echom 'Warning: jedi-vim failed to get Python version from sys.version_info: ' . s:def_py
            echom 'Falling back to version 2.'
            echohl None
        endif
        let s:def_py = 2
    elseif &verbose
        echom 'jedi-vim: auto-detected Python: '.s:def_py
    endif


""""""Basic""""""
let mapleader="\<SPACE>"

set path=$PWD/**

set mouse=a

" Write file
nnoremap <Leader>w :w<CR>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap j gj
nnoremap k gk

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set noshowmode
set showmatch
set ruler
set nu
set rnu
set cursorline

set autowrite
set autoindent    " align the new line indent with the previous line
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noerrorbells
set linespace=0
set nojoinspaces

set splitbelow
set splitright
set shiftround    " round indent to multiple of 'shiftwidth'

set ai
set si

set autoread
set encoding=utf-8

set undofile
set undolevels=1000

inoremap jk <esc>

""""""Python""""""
let g:python3_host_prog = '/usr/bin/python3'

""""""Trailing whitespace""""""
" display tabs and trailing spaces
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅"

""""""Search""""""
set hlsearch
set ignorecase
set smartcase
set incsearch
set gdefault
set magic

nnoremap <leader>, :nohlsearch<CR>

" Search and Replace remapping
nmap <Leader>s :%s//g<Left><Left>


""""""Status line""""""
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'component': {
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}'
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

""""""Functions""""""
" http://vi.stackexchange.com/questions/454/whats-the-simplest-way-to-strip-trailing-whitespace-from-all-lines-in-a-file
"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

""""""Color scheme""""""
set background=dark
colorscheme gruvbox
set termguicolors
let g:airline_powerline_fonts = 1
let g:airline_theme='zenburn'
