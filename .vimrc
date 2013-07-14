" Set up Centrally located backups
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" BEGIN Settings required for Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage itself
Bundle 'gmarik/vundle'

" My Bundles
" Repos on GitHub
Bundle 'altercation/vim-colors-solarized'
Bundle 'myusuf3/numbers.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-eunuch'

" Recommended Plugins from 'Turning Vim Into a Modern Python IDE'
" by sonotek
" sontek.net/blog/detail/turning-vim-into-a-modern-python-ide
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'ervandew/supertab'
Bundle 'sontek/minibufexpl.vim'
Bundle 'wincent/Command-T'
Bundle 'mitechie/pyflakes-pathogen'
Bundle 'mileszs/ack.vim'
Bundle 'sjl/gundo.vim'
Bundle 'fs111/pydoc.vim'
Bundle 'pep8'
Bundle 'alfredodeza/pytest'
Bundle 'reinh/vim-makegreen'
Bundle 'TaskList.vim'
" Bundle 'sontek/rope-vim'


" Github repos of the user vim-scripts
" Bundle 'L9'
" Bundle 'FuzzyFinder'
Bundle 'surround.vim'
Bundle 'repeat.vim'
Bundle 'matchit.zip'
Bundle 'python_match.vim'
Bundle 'snipMate'

filetype plugin indent on
" END Settings required for Vundle


" NERDTree Settings
" Toggle NERDTree w/ f2
map <f2> :NERDTreeToggle<CR>

" Recommended Settings from 'Turning Vim Into a Modern Python IDE'
" by sonotek
" sontek.net/blog/detail/turning-vim-into-a-modern-python-ide
set foldmethod=indent
set foldlevel=99
" Change windows w/ ctr+[hjkl] instead of ctr+w+[hjkl]
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Work Around conflict with <f5> mapping for pep8
let g:pep8_map='<f8>'
" Set TaskList mapping
map <leader>td <Plug>TaskList

" TODO  finish implementing IDE settings #Revision-History

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Programming, Syntax Highlighting, etc.
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

" execute pathogen#infect()