syntax on 
filetype plugin indent on

set number relativenumber

let mapleader = " "

inoremap jk <Esc>

nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :q!<cr>
nnoremap <leader>R :! 

nnoremap N <Nop>
vnoremap N <Nop>
nnoremap N ^
vnoremap N ^

nnoremap M <Nop>
vnoremap M <Nop>
nnoremap M $
vnoremap M $

" nnoremap <leader>\ %

nnoremap <leader>tn :tabedit 
nnoremap <leader>tq :tabclose<cr>

set splitright
set splitbelow
nnoremap <leader>vn :vnew 
nnoremap <leader>hn :split 
nnoremap <leader>W <C-w>w

nnoremap <leader><Tab> gt
nnoremap <leader><leader>x :bd<cr>

