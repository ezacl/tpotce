set nocompatible
syntax enable

set hidden
set autoindent
set ignorecase
set smartcase
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set laststatus=2
set splitright
set splitbelow
set encoding=utf-8
set mouse=a
set scrolloff=8
set nu
set relativenumber
set nowrap
set incsearch
set hlsearch
set noswapfile
set nobackup

filetype plugin indent on

" remap leader key
let mapleader = " "
" for nice escaping
inoremap uu <ESC>
" to write with mm instead of :w
nnoremap mm :w<CR>
" remap Y to be logical
map Y y$
" write all buffers
nnoremap <leader>w :wall<CR>
" to move between windows easily
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
" easier way to switch to alternate buffer
nnoremap <leader>c <C-^>
" easily move between buffers
nnoremap <leader>b :ls<CR>:b
" easily clear search highlighting
nnoremap <silent> <leader>n :nohlsearch<CR>
" turn off highlighting after pressing enter on search
cnoremap <expr> <silent> <cr> getcmdtype() =~ '[?/]' ? "\<cr>:noh\<cr>" : "\<cr>"

" autocomplete bracket pairs
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap < <><Left>
inoremap ' ''<Left>
inoremap " ""<Left>

colorscheme desert

set colorcolumn=89
highlight ColorColumn ctermbg=darkgray
highlight StatusLine ctermbg=yellow ctermfg=darkgray

highlight Normal ctermfg=white ctermbg=black
highlight Search ctermbg=darkblue ctermfg=white
