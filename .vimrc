set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set noswapfile
set nowritebackup
set nobackup
set novisualbell
set noundofile
set ruler
colorscheme slate
syntax on

" 			STACKOVERFLOW CODE
" 				   vvvv
" 
" Set up vertical vs block cursor for insert/normal mode

if &term =~ "screen."
    let &t_ti.="\eP\e[1 q\e\\"
    let &t_SI.="\eP\e[5 q\e\\"
    let &t_EI.="\eP\e[1 q\e\\"
    let &t_te.="\eP\e[0 q\e\\"
else
    let &t_ti.="\<Esc>[1 q"
    let &t_SI.="\<Esc>[5 q"
    let &t_EI.="\<Esc>[1 q"
    let &t_te.="\<Esc>[0 q"
endif


let skip_defauts_vim=1
set viminfo=""
