" No vi compatibility
set nocompatible

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
colorscheme onedark

" Mouse
set mouse=a
set novisualbell

" System clipboard
set clipboard=unamedplus
" map <S-insert> <C-i>

" Autocompletion
" set wildmode=longest:full,full
set wildmode=full
" set omnifunc=...


" Split windows
set splitbelow splitright

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
nnoremap <leader><C-r>h <C-w><
nnoremap <leader><C-r>j <C-w>+
nnoremap <leader><C-r>k <C-w>-
nnoremap <leader><C-r>l <C-w>>
nnoremap <leader><C-r>e <C-w>=

" Creating Adjecent windows
map <C-w>w <C-w>v
" map <C-w>s <C-w>s

" Quit Alternative
map Q :q<CR>
map <leader>Q :q!<CR>

" Esc Alternative
map <C-c> <ESC><ESC>

" Find Alternative
map <C-f> /

" Find Only in visual area
map <leader><C-f>o /\%V

" Find From Register
nnoremap <leader>r yy/<C-r>"<CR>
xnoremap <leader>r yy/<C-r>"
vnoremap <leader>v y/\V<C-R>=escape(@",'/\')<CR><CR>

" Line Number Alternative
map <C-n> :

" Saving Alternative
map W :w<CR>

" Macros

" Noter + Flower
let @n="*NOTE(mh): "
let @t="*TODO(mh): "
let @b="*NOTE.: "
let @r="*TODO.: "
let @f="*FIXME(mh):"
let @d="*FIXME."

" Deploy
let @s="*DEPLOY"

" Highlight color fix
" https://stackoverflow.com/questions/3074068/how-to-change-the-color-of-the-selected-code-vim-scheme
set bg=dark

" Highlight line
set cursorline

" Remap Leader
let mapleader = "\\"

" Left Column
" set signcolumn=yes

" Plugins (plug-vim)
call plug#begin()
Plug 'junegunn/fzf'
"Plug 'neoclide/coc.nvim', { 'branch': 'release' }
"Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'ap/vim-css-color'
Plug 'wellle/context.vim'
Plug 'dkprice/vim-easygrep'
Plug 'tpope/vim-surround'
Plug 'pseewald/vim-anyfold'
Plug 'tomasiser/vim-code-dark'
" Plug 'mbbill/undotree'
call plug#end()

" Plugin Specific
" Nerd Tree
nnoremap <leader>n :NERDTreeToggle<CR>

" Anyfold
map <leader>a :AnyFoldActivate<CR>

" Context
map <leader><C-e> :ContextEnable<CR>
map <leader><C-d> :ContextDisable<CR>
" it uses quite a lot of memory tbh, so don't load it for big files
let g:context_enabled = 0

" File nnoremaps
nnoremap <leader>w :e#<CR>
nnoremap <leader>o :e <Tab>
nnoremap <leader><C-o> :e 
nnoremap <leader>b :e **/<Tab>
nnoremap <leader><C-b> :e **/
nnoremap <leader><C-f>f :FZF<CR>

" Dirty Hack
set wildcharm=<Tab>

" Terminal nnoremaps
nnoremap <leader>t :vert term<CR>

" Search Highlighting nnoremap
let hlstate=0
nnoremap <silent> <C-s> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>


" Grepping
nnoremap <leader>g :vimgrep  **<left><left><left>
map <C-g>, :cp<CR>
map <C-g>. :cn<CR>

" Diffing
map <leader>d :vert diffsplit <Tab>

" Get Current Working Directory
nnoremap <leader>p :pwd<CR>

" Show number of lines & such
set showcmd

" Folding
" set foldmethod=syntax
set foldlevel=92 " otherwise everything is folded by default
map <C-t>o :foldopen<CR>
map <C-t>c :foldclose<CR>

" List Chars config
set list
" full listchars config
" set listchars=eol:↓,tab:\ \ ┊,trail:·,extends:…,precedes:…,space:·
set listchars=tab:\¦\ ,trail:·,extends:…,precedes:…
hi SpecialKey ctermfg=240 guifg=#585858

" Other alternatives
map <leader><C-s> g<C-g>
nnoremap <C-p> <C-y>
xnoremap <C-p> <C-y>
inoremap <C-k> <C-x><C-f>

" Set syntax for custom langs

" scriptsd + deploy
au BufRead,BufNewFile *\.dlang     set filetype=dlang
au BufRead,BufNewFile *\.sd\.db    set filetype=sddb
au BufRead,BufNewFile *\.sd\.sdb   set filetype=sddb
au BufRead,BufNewFile *\.sd\.cfg   set filetype=sdcfg
au BufRead,BufNewFile *\.sd        set filetype=sd
au BufRead,BufNewFile *\.deploy    set filetype=deploy

" moving lines
nnoremap <leader><C-j> :m .+1<CR>==
nnoremap <leader><C-k> :m .-2<CR>==
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
vnoremap <leader><C-j> :m '>+1<CR>gv=gv
vnoremap <leader><C-k> :m '<-2<CR>gv=gv

" cursor
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

" tab suggestions
set wildmenu

" completion
inoremap <expr> <Tab> TabComplete()
fun! TabComplete()
    if getline('.')[col('.') - 2] =~ '\K' || pumvisible()
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfun

" Minimalist-AutoCompletePop-Plugin
set shortmess=filnxtToOS
set ignorecase
map <leader>i :set ignorecase!<CR>
" set completeopt=menu,menuone,noinsert,longest
set completeopt=menu,menuone,noinsert
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
autocmd InsertCharPre * call AutoComplete()
fun! AutoComplete()
    if v:char =~ '\K'
        \ && getline('.')[col('.') - 2] !~ '\K' " last char
        \ && getline('.')[col('.') - 1] !~ '\K'

        call feedkeys("\<C-N>", 'n')
    end
endfun

" highlight word without searching
nnoremap <silent><leader><cr> :let searchTerm = '\v<'.expand("<cword>").'>' <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>
xnoremap <silent><leader><cr> yy:<C-u>let searchTerm = '\V'.substitute(escape(@", '\/'), "\n", '\\n', "g") <bar> let @/ = searchTerm <bar> call histadd("search", searchTerm) <bar> set hls <CR>

" grep visual
xnoremap <leader><C-g> y:vimgrep /<C-r>"/ *

" vim-airline fix
set noshowmode
let g:airline_powerline_fonts = 1

" from the 'do 90% of what plugins do just with vim'
set path+=**
nnoremap <leader>f :find *

" netrw fix
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" windowing fix
nnoremap <silent><leader>m :call MaximizeToggle()<CR>

function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction

" wrap fix
nnoremap <leader><C-w> :set nowrap!<CR>

" rotate fix
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" grep fix
augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l* lwindow
augroup END

" completion fix
nnoremap <leader>W :set complete+=k**<CR>

" last command
nnoremap <leader><C-l>c :<Up>
nnoremap <leader><C-l>f /<Up>

" g-hacks
nnoremap <leader>h gh
nnoremap <leader>j gj
nnoremap <leader>k gk
nnoremap <leader>l gl
