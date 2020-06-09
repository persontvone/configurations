call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'rking/ag.vim'
call plug#end()
syntax on
let g:mapleader=','
vnoremap <C-c> "+y
map <C-v> "+P
set background=dark
set number
set expandtab 
set tabstop=2


set hlsearch
set incsearch

colorscheme sublimemonokai

"mappings

map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
