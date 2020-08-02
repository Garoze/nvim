" ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ " 
"██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ " 
"██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗"  
"██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║"
"╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝"
" ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ " 

set iskeyword+=-
autocmd FileType * set formatoptions-=cro
autocmd FileType cpp,c nnoremap <C-b> :!make && make run<CR>

let g:coc_snippet_next = '<C-l>'
let g:coc_snippet_prev = '<C-k>'

" NERDTree configurations 
let g:NERDTreeDirArrows=0
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['Orchid', 'Gold', 'LightSkyBlue'] 

if !exists('g:vscode')
	syntax on

	set ruler 
	set number 
	set relativenumber
	set nowrap 
	set nobackup
    set noshowmode
	set nowritebackup

	set tabstop=4
	set shiftwidth=4
	set showtabline=2
	set smarttab 
	set expandtab 

	set smartindent 
	set autoindent

	set t_Co=256
	set clipboard+=unnamedplus
	set conceallevel=0
	set splitright 
	set splitbelow
	set mouse=a 
	set shortmess+=c
	set signcolumn=yes
	set updatetime=300
	set timeoutlen=100
	set incsearch
endif
