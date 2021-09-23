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

" Formating
set ruler
" set nowrap

" Backuping
set noswapfile
set nobackup
set noundofile

" Syntax
syntax on

" Mapping
map x "_dl
vmap X "_d

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
" map <S-insert> <C-i>

" Autocompletion
" set wildmode

" Split windows
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Replacement
nnoremap S :%s///g<Left><Left><Left>

" Tabs
nnoremap <C-w>n :tabnew<CR>
nnoremap <C-w>c :tabclose<CR>
nnoremap <C-w>. :tabnext<CR>
nnoremap <C-w>, :tabprevious<CR>

" Cursor
set guicursor=

" Custom .vimrc
" set exrc

" Emulated shell &| Windows
set noerrorbells

" Scrolling
set scrolloff=4

" Resizing windows
map ^[h <C-w><
map ^[j <C-w>+
map ^[k <C-w>-
map ^[l <C-w>>
map ^[e <C-w>=

" Creating Adjecent windows
map <C-w>w <C-w>v
" map <C-w>s <C-w>s

" Quit Alternative
map Q :q<CR>

" Esc Alternative
map <C-c> <ESC>

" Find Alternative
map <C-f> /

" Find Only in visual area
map <C-a>o /\%V

" Find From Register
map <C-a>r /<C-r>"<CR>
vnoremap <C-a>v y/\V<C-R>=escape(@",'/\')<CR><CR>

" Line Number Alternative
map <C-n> :

" Saving Alternative
map W :w<CR>

" Note & todo macro
let @n="*NOTE(mh): "
let @t="*TODO(mh): "
let @b="*NOTE.: "
let @r="*TODO.: "
let @f="*FIXME(mh)"
let @d="*FIXME."

" Highlight color fix
" https://stackoverflow.com/questions/3074068/how-to-change-the-color-of-the-selected-code-vim-scheme
set bg=dark

" Highlight line
set cursorline

" Remap Leader
let mapleader = " "

" Left Column
" set signcolumn=yes

" Plugins (plug-vim)
call plug#begin()
Plug 'junegunn/fzf'
"Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
"Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'wellle/context.vim'
Plug 'dkprice/vim-easygrep'
Plug 'tpope/vim-surround'
Plug 'pseewald/vim-anyfold'
call plug#end()

" Plugin Specific
" Nerd Tree
nnoremap <leader>d :NERDTreeToggle<CR>

" Anyfold
map <leader><C-a>a :AnyFoldActivate<CR>

" Context
map <leader><C-c>e :ContextEnable<CR>
map <leader><C-c>d :ContextDisable<CR>

" File nnoremaps
nnoremap <leader>w :e#<CR>
nnoremap <leader>s :FZF<CR>

" Terminal nnoremaps
nnoremap <leader>t :vert term<CR>

" Search Highlighting nnoremap
let hlstate=0
nnoremap <silent> <C-s> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>

" Grepping
nnoremap <leader>g :vimgrep  *<left><left>
map <C-g>, :cp<CR>
map <C-g>. :cn<CR>

" Diffing
map <leader>D :vert diffsplit

" Get Current Working Directory
nnoremap <leader>p :pwd<CR>

" Show number of lines & such
set showcmd

" Folding
" set foldmethod=syntax
set foldlevel=92 " otherwise everything is folded by default
map <C-t>o :foldopen<CR>
map <C-t>c :foldclose<CR>
