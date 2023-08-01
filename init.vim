" Install vim-plug to enable plugins
"  https://github.com/junegunn/vim-plug#neovim
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Themes 
Plug 'flazz/vim-colorschemes'
" Plug 'rebelot/kanagawa.nvim'

" Plugins
Plug 'airblade/vim-gitgutter'

" Plug 'chrisbra/vim-autosave'

Plug 'easymotion/vim-easymotion'

Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python -m chadtree deps'}

Plug 'majutsushi/tagbar'

Plug 'mattn/emmet-vim'

Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

Plug 'prabirshrestha/vim-lsp'

Plug 'preservim/nerdcommenter'

Plug 'raimondi/delimitmate'

Plug 'rust-lang/rust.vim'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fireplace'

Plug 'valloric/youcompleteme'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'w0rp/ale'

call plug#end()


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


" Plugins:

" colorscheme kanagawa
" colorscheme horseradish256
colorscheme last256

" Autosave
:let g:autosave_timer = 2000

" easymotion
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-overwin-f)
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" NERD Commenter
nmap <leader>/ <leader>c<leader>

" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" Emmet
let g:user_emmet_leader_key = '<C-Z>'


" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" COQ
let g:coq_settings = { 'auto_start': 'shut-up' }
nnoremap <leader>v <cmd>CHADopen<cr>


" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#ale#enabled = 1

" Ale 
let g:ale_sign_error = '!!'
let g:ale_sign_warning = '??'

" youcompleteme
let g:ycm_clangd_binary_path = system('brew --prefix llvm').'/bin/clangd'
