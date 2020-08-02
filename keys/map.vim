"███╗   ███╗ █████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗"
"████╗ ████║██╔══██╗██╔══██╗██║   ██║██║████╗ ████║"
"██╔████╔██║███████║██████╔╝██║   ██║██║██╔████╔██║"
"██║╚██╔╝██║██╔══██║██╔═══╝ ╚██╗ ██╔╝██║██║╚██╔╝██║"
"██║ ╚═╝ ██║██║  ██║██║██╗   ╚████╔╝ ██║██║ ╚═╝ ██║"
"╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝    ╚═══╝  ╚═╝╚═╝     ╚═╝"

let g:mapleader = '\<Space>'

" Open Nerdtree 
map <C-B> :NERDTreeToggle<CR>

" NERDTree configurations 
let g:NERDTreeDirArrows=0
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Fzf 
nnoremap <C-P> :Files<CR>
augroup fzf 
    autocmd!
    autocmd! FileType fzf 
    autocmd  FileType fzf set laststatus=0 noshowmode noruler 
                \| autocmd Bufleave <buffer> set laststatus=2 showmode ruler 
augroup END

"Close and exit 
nnoremap <C-q> :q  <CR>
nnoremap <C-w> :wq <CR>

" indent 
vmap < <gv 
vmap > >gv

"Vim split mode 
nnoremap <M-l> <C-w>v
nnoremap <M-k> <C-w>s

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

" Suporte para o clipboard do windows 
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
