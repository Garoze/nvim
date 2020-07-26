"███╗   ███╗ █████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗"
"████╗ ████║██╔══██╗██╔══██╗██║   ██║██║████╗ ████║"
"██╔████╔██║███████║██████╔╝██║   ██║██║██╔████╔██║"
"██║╚██╔╝██║██╔══██║██╔═══╝ ╚██╗ ██╔╝██║██║╚██╔╝██║"
"██║ ╚═╝ ██║██║  ██║██║██╗   ╚████╔╝ ██║██║ ╚═╝ ██║"
"╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝    ╚═══╝  ╚═╝╚═╝     ╚═╝"

let g:mapleader = '\<Space>'

"Fechar e salvar
nnoremap <C-s> :w<CR>

" kj como ESC 
inoremap kj <ESC>

"Tab altera entre os Buffers 
nnoremap <TAB> :bnext<CR>
nnoremap <TAB> :bprevious<CR>

" Alt+j/k move blocos
nnoremap <M-k> VdkP
nnoremap <M-j> VdjP

"Resize window 
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

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
