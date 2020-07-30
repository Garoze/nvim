"███╗   ███╗ █████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗"
"████╗ ████║██╔══██╗██╔══██╗██║   ██║██║████╗ ████║"
"██╔████╔██║███████║██████╔╝██║   ██║██║██╔████╔██║"
"██║╚██╔╝██║██╔══██║██╔═══╝ ╚██╗ ██╔╝██║██║╚██╔╝██║"
"██║ ╚═╝ ██║██║  ██║██║██╗   ╚████╔╝ ██║██║ ╚═╝ ██║"
"╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝    ╚═══╝  ╚═╝╚═╝     ╚═╝"

let g:mapleader = '\<Space>'

"Close and exit 
nnoremap <C-q> :q  <CR>
nnoremap <C-w> :wq <CR>

"Vim split mode 
nnoremap <M-l> <C-w>v
nnoremap <M-k> <C-w>s

"Copiar para o clipboard
vnoremap <C-c> "+y

"split nav 
nnoremap <C-up>    <C-W>k
nnoremap <C-down>  <C-W>j
nnoremap <C-left>  <C-W>h
nnoremap <C-right> <C-W>l

"Tab altera entre os Buffers 
nnoremap <TAB> :bnext<CR>
nnoremap <TAB> :bprevious<CR>

"Alt+j/k move blocos
nnoremap <C-k> VdkP
nnoremap <C-j> VdjP

"Resize window 
"nnoremap <M-j> :resize -2<CR>
"nnoremap <M-k> :resize +2<CR>
"nnoremap <M-h> :vertical resize -2<CR>
"nnoremap <M-l> :vertical resize +2<CR>

"Easy caps 
inoremap <C-u> <ESC>viwUi
nnoremap <C-u> viwU<ES>

"Vim HardMode 
for key in ['<Up>','<Down>', '<Left>', '<Right>']
    exec 'nnoremap' key '<Nop>'
    exec 'inoremap' key '<Nop>'
    exec 'cnoremap' key '<Nop>'
    exec 'vnoremap' key '<Nop>'
endfor 
