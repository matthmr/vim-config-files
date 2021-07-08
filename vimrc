" Line numbers
set number
set relativenumber

" Formating
set encoding=utf-8
set smartindent
set fileformat=unix
set autoindent
set softtabstop=2
set smartindent
set tabstop=2
set shiftwidth=2
set ruler
set smarttab
" set nowrap

" Backuping
set noswapfile
set nobackup
set noundofile

" Syntax
syntax on

" Mapping
vmap x "_d
" map x "_d

" Highlighting
set nohlsearch
set incsearch

" Color scheme
" colorscheme industrial
set bg=light

" Mouse
set mouse=a

" System clipboard
set clipboard=unamedplus
map <S-insert> <C-i>

" Autocompletion
" set wildmode

"	Split windows
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Replacement
nnoremap S :%s//g<Left><Left>

" Tabs
map <silent> <C-t>n :tabnew<CR>
" map <silent> <C-t><C-c> :tabclose<CR>
map <silent> <C-t>t :tabnext<CR>

" Cursor
set guicursor=

" Custom .vimrc
" set exrc

" Emulated shell &| Windows
set noerrorbells

" Scrolling
set scrolloff=4

" Resizing windows
map <C-q>h <C-w><
map <C-q>j <C-w>+
map <C-q>k <C-w>-
map <C-q>l <C-w>>
map <C-q>e <C-w>=
