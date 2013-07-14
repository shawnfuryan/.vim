" Set up Centrally located backups
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp


" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Break compatibility with Vi in order to expand functionality
set nocompatible

" Programming, Syntax Highlighting, etc.
filetype on
filetype plugin indent on
syntax enable
set grepprg=grep\ -nH\ $*
set autoindent
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
set textwidth=79
set smarttab
" 4-space tabs
set number
" Tab Completion
set wildmenu
set wildmode=list:longest,full

" Random Niceties
set noerrorbells
set background=dark
" Enable mouse support in console
set mouse=a
set ignorecase
set smartcase
" Remap jj to escape when in insert mode, so that you enter movement mode
" instead of inserting jj
inoremap jj <Esc>
nnoremap JJJJ <Nop>
set incsearch
set hlsearch
" Remap search buttons so that screen centers on next/prev search term
map N Nzz
map n nzz

" Look and Feel
" Color Scheme
if has("gui_running")
    colorscheme inkpot
    " Remove Toolbar
    set guioptions-=T
    set guifont=Terminus\ 9
endif
" Set up status
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

execute pathogen#infect()
