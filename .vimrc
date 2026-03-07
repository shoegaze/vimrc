syntax on
filetype plugin indent on


set number relativenumber

set expandtab
set tabstop=2
set shiftwidth=2


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

nnoremap <leader>h ^
vnoremap <leader>h ^
nnoremap <leader>l $
vnoremap <leader>l $

" nnoremap <leader>\ %

nnoremap <leader>tt :tabedit<cr>
nnoremap <leader>tq :tabclose<cr>

set splitright
set splitbelow
nnoremap <leader>vv :vnew<cr>
nnoremap <leader>hh :split<cr>
nnoremap <leader><leader><Tab> <C-w>w

nnoremap <leader><Tab> gt
nnoremap <leader><leader>x :bd<cr>
