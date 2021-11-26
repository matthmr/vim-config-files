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
set nowrap

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
colorscheme gruvbox

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
xnoremap s :s///g<Left><Left><Left>

" Tabs
nnoremap <C-w>n :tabnew<CR>
nnoremap <C-w>c :tabclose<CR>

" Cursor
set guicursor=

" Custom .vimrc
" set exrc

" Emulated shell &| Windows
set noerrorbells

" Scrolling
set scrolloff=4

" Resizing windows
nnoremap <leader>r<C-h> <C-w><
nnoremap <leader>r<C-j> <C-w>+
nnoremap <leader>r<C-k> <C-w>-
nnoremap <leader>r<C-l> <C-w>>
nnoremap <leader>r<C-e> <C-w>=

" Creating Adjecent windows
map <C-w>w <C-w>v

" Quit Alternative
map Q :q<CR>
map <leader>Q :q!<CR>

" Esc Alternative
nnoremap <C-c> <C-[><Space>

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
set signcolumn=yes
set cursorcolumn

" Plugins (plug-vim)
call plug#begin()
" Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'wellle/context.vim'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-surround'
Plug 'pseewald/vim-anyfold'
Plug 'tomasiser/vim-code-dark'
Plug 'vimwiki/vimwiki'
Plug 'mhinz/vim-startify'
Plug 'mbbill/undotree'
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
nnoremap <leader>x :e **/<Tab>
nnoremap <leader><C-x> :e **/
nnoremap <leader><C-f>f :FZF<CR>

" Dirty Hack
set wildcharm=<Tab>

" Terminal nnoremaps
nnoremap <leader>t :vert term<CR>

" Search Highlighting nnoremap
let hlstate=0
nnoremap <silent> <C-s> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>


" Grepping
nnoremap <leader>g :vimgrep // **<left><left><left><left>
map <C-g>, :cp<CR>
map <C-g>. :cn<CR>

" Diffing
" nnoremap <leader>d :vert diffsplit <Tab>
nnoremap <leader>d :vert diffsplit 
" nnoremap <leader><C-d> :vert diffsplit 

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
au BufRead,BufNewFile *\.sd        set filetype=sdpkg
au BufRead,BufNewFile *\.sd\.db    set filetype=sddb
au BufRead,BufNewFile *\.sd\.cfg   set filetype=sdcfg
au BufRead,BufNewFile *\.sd\.ext   set filetype=sdext
au BufRead,BufNewFile *\.deploy    set filetype=deploy
au BufRead,BufNewFile *\.dlang     set filetype=dlang

" moving lines
nnoremap <leader>m<C-j> :m .+1<CR>==
nnoremap <leader>m<C-k> :m .-2<CR>==
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
vnoremap <leader>m<C-j> :m '>+1<CR>gv=gv
vnoremap <leader>m<C-k> :m '<-2<CR>gv=gv

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
set path=**
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
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" grep fix
augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l* lwindow
augroup END

" completion fix
nnoremap <leader>W :set complete+=k**<CR>
set complete-=i

" last command
nnoremap <leader><C-u>j :<Up>
nnoremap <leader><C-u>k /<Up>

" g-hacks
nnoremap <leader><C-j> gj
nnoremap <leader><C-k> gk

" replace on visual select
xnoremap <leader>s :s///g<left><left><left>

" horizontal scroll
set sidescroll=4
nnoremap <leader>0 g0
nnoremap <leader>$ g$

nnoremap <leader><C-h> :tabprevious<CR>
nnoremap <leader><C-l> :tabnext<CR>

nnoremap <leader><C-w>. 4zh
nnoremap <leader><C-w>, 4zl

" bar
set colorcolumn=100

" add new line
nnoremap K s<CR><ESC>
xnoremap K s<CR><ESC>

" rainbow
" let g:rainbow_active = 1
au FileType c,cpp,python,sh,rust,javascript,json call rainbow#load()

" case insensitive search
set wildignorecase

" tabs moving
nnoremap <C-t><C-h> :-tabmove<CR>
nnoremap <C-t><C-l> :+tabmove<CR>

" vimwiki config
let g:vimwiki_list = [{'path':'/home/mh/Wiki/', 'syntax': 'markdown', 'ext': 'md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_markdown_link_ext = 1

" vimwiki compatibility
filetype plugin on

" startify
let g:startify_bookmarks = [
	\ { 's': '~/scripts/scriptsd' },
	\ { 'v': '~/.vimrc' },
	\ { 'p': '~/Projects' },
	\ { 'd': '~/Documents/' },
	\ ]

let g:startify_custom_header = [
	\ '\------------------------------------------\' ,
	\ '|       H  H   https://twitch.tv/mhhmr     |' ,
	\ '|       H  H                               |' ,
	\ '| mmmm  HHHH                               |' ,
	\ '| m m m H  H                               |' ,
	\ '| m m m H  H   https://github.com/matthmr  |' ,
	\ '\------------------------------------------\' ,
	\ ]

" gitgutter
let g:gitgutter_max_signs = 200

" update time
let updatetime=2000 " updates each 2 seconds

" undotree
nnoremap <leader>u :UndotreeToggle<CR>

" reload .vimrc
nnoremap <leader>r :source /home/mh/.vimrc

" buffer loading
nnoremap <leader>b :buffers<CR>:buffer 
