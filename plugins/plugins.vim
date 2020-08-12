"██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗"
"██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║"
"██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║"
"██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║"
"██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
"╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"

call plug#begin('~/.config/nvim/autoload/plugged')
    " CoC - Syntax 
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Sneak & QuickScope 
    Plug 'justinmk/vim-sneak'
    Plug 'unblevable/quick-scope'
    " Suport de Syntax 
	Plug 'sheerun/vim-polyglot'
    " Onedark-vim theme
    Plug 'joshdick/onedark.vim'
    " Lightline 
    Plug 'itchyny/lightline.vim'
    " Vim Rainbow
    Plug 'frazrepo/vim-rainbow'
    " Fzf 
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Nerdtreee
    Plug 'preservim/nerdtree'
    " Markdown preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

" Atualização Automatica dos Plugins.
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
