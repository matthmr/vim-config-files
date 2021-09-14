" Line numbers
set number
set relativenumber

" Formating
" set fileformat=unix
set encoding=utf-8

" https://stackoverflow.com/questions/3682582/how-to-use-only-tab-not-space-in-vim
" {
" set softtabstop=2 " These are spaces
" set smarttab
set autoindent " or smartindent or cindent
set tabstop=2
set shiftwidth=2
set noexpandtab
" }

" Formating -- Continue
set ruler
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
colorscheme codedark

" Mouse
set mouse=a
set novisualbell

" System clipboard
set clipboard=unamedplus
map <S-insert> <C-i>

" Autocompletion
" set wildmode

" Split windows
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
map <silent> <C-t>p :tabprevious<CR>

" Cursor
set guicursor=

" Custom .vimrc
" set exrc

" Emulated shell &| Windows
set noerrorbells

" Scrolling
set scrolloff=4

" Resizing windows
map <M>h <C-w><
map <M>j <C-w>+
map <M>k <C-w>-
map <M>l <C-w>>
map <M>e <C-w>=

" Note & todo macro
" Default:
"		\"np					|"tp						|"bp		|"rp
"		NOTE(mh): ...	| TODO(mh): ... |NOTE.	|TODO.
let @n="*NOTE(mh): "
let @t="*TODO(mh): "
let @b="*NOTE.: "
let @r="*TODO.: "

" Highlight color fix
" https://stackoverflow.com/questions/3074068/how-to-change-the-color-of-the-selected-code-vim-scheme
" hi Visual term=reverse cterm=reverse
set bg=dark

