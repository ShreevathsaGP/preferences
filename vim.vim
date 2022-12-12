syntax on

" Defaults
highlight ColorColumn ctermbg=0 guibg=lightgrey
set belloff=all
set colorcolumn=120
set expandtab
set hlsearch
set incsearch
set nobackup
set noerrorbells
set noswapfile
set nowrap
set nu
set number
set relativenumber
set shiftwidth=4
set smartcase
set smartindent
set t_vb=
set tabstop=4 "softtabstop=4
set title
set undodir=~/.vim/undodir
set undofile

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'dart-lang/dart-vim-plugin' " dart and flutter
Plug 'bps/vim-textobj-python' " functions & classes in Python
Plug 'christoomey/vim-sort-motion' " gs {built-in-commands}
Plug 'christoomey/vim-system-copy' " cp {built-in-commands}
Plug 'christoomey/vim-titlecase' " gt {built-in-commands}
Plug 'jiangmiao/auto-pairs' " auto-pair (No commands)
Plug 'kana/vim-textobj-function' " functions in C | C++ | Java | Vim
Plug 'kana/vim-textobj-user' " Dependency fo all other text objects
Plug 'kien/ctrlp.vim' " Ctrl + p
Plug 'mbbill/undotree' " <leader> u
Plug 'morhetz/gruvbox' " colorscheme gruvbox
Plug 'scrooloose/nerdtree' " <leader> pv
Plug 'sophacles/vim-processing' " processing java
Plug 'tpope/vim-commentary' " gc {built-in-commands} 
Plug 'tpope/vim-surround' " cs {built-in-commands}
Plug 'vim-ruby/vim-ruby' " ruby syntax highlighting

call plug#end()

" Color Schemes
let g:gruvbox_contrast_dark = 'hard'
set background=dark
colorscheme gruvbox

" File Search
let g:ctrlp_use_caching = 0
let g:ctrlp_user_command=['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Word Count
let g:word_count=wordcount().words
function WordCount()
    if has_key(wordcount(),'visual_words')
        let g:word_count=wordcount().visual_words."/".wordcount().words " count selected words
    else
        let g:word_count=wordcount().cursor_words."/".wordcount().words " or shows words 'so far'
    endif
    return g:word_count
endfunction

set statusline+=\ word:\ \%{WordCount()}
set laststatus=2 " show the statusline

" Custom Commands
command! W :w
command! Q :q
command! Wq :wq
command! WQ :wq

" Key Remaps
let mapleader = " "
nnoremap <leader>= :resize +5<CR>
nnoremap <leader>- :resize -5<CR>
nnoremap <leader>fq :q!<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>_ :vertical resize -5<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :NERDTree<bar> :vertical resize 30<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>m :make<CR>
nnoremap <leader>e :edit<CR>

" Visual Mode Remaps
let mapleader = ","
vnoremap <leader>s :<C-U>'<,'> ! awk '{ print length(), $0 <bar> "sort -n <bar> cut -d\\  -f2-" }'<CR>
