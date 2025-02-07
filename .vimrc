syntax on  
filetype plugin indent on


set number relativenumber

" Toggle relative line numbers between modes
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END 


let mapleader = " " 

inoremap jk <Esc>

nmap <leader>w :w!<cr>
" nmap <leader>q :q<cr>
nnoremap <leader>q :bd<cr>
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

nnoremap <leader>tt :tabedit<cr>
nnoremap <leader>tq :tabclose<cr>

set splitright
set splitbelow
nnoremap <leader>vv :vnew<cr>
nnoremap <leader>hh :split<cr>
nnoremap <leader><Tab> gt
nnoremap <leader><leader><Tab> <C-w>w
