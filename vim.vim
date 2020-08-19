syntax on

" Defaults
set number
set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch
set title
set smartcase
set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'

call plug#end()

" Color Schemes
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

" File Search
let g:ctrlp_user_command=['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0

" Key Remaps
let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>pv :NERDTree<bar> :vertical resize 30<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>fq :q!<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>h+ :resize +5<CR>
nnoremap <leader>h- :resize -5<CR>
