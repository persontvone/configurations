let g:ycm_global_ycm_extra_conf = '/home/pharell/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'
Plug 'SirVer/ultisnips'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-sensible'
call plug#end()
set path+=/usr/include/c++/10.1.0
syntax on
let g:mapleader=','
vnoremap <C-c> "+y
map <C-v> "+P
set background=dark
set nocompatible
syntax on
filetype plugin indent on
set number
" indentation
"set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set tabstop=2 shiftwidth=2 noexpandtab smarttab
set scrolloff=8
set tw=0 wm=0
set hlsearch
set incsearch
" bash-like TAB completion
set wildmode=longest,list

" Navigate through completion variants using ← and →
set wildmenu
" cscope
colorscheme sublimemonokai
" Syntastic
set statusline+=%f
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_loc_list_height = 2
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
set completeopt=longest,menu
let g:ycm_confirm_extra_conf = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_autoclose_preview_window_after_completion=1
" find tags until HOME dir
set tags=./tags,tags;$HOME

"mappings
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>jj :YcmCompleter GoTo<CR>
nnoremap <leader>r :YcmCompleter GoToReferences<CR>
nnoremap <leader>f :YcmCompleter GoToDefinition<CR>
"Tagbar
nmap <F8> :TagbarToggle<CR>
:nnoremap <F12> :vertical wincmd f<CR>
