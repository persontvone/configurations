call plug#begin('~/.vim/plugged')
Plug 'ntpeters/vim-better-whitespace'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-commentary'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'tomasr/molokai'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'mileszs/ack.vim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-vim-lsp'
call plug#end()


syntax on

"remap leader button
let g:mapleader=','

"display the status line always
set laststatus=2

"No default cache file
set noswapfile

"Copy selected symbols into OS buffer
vnoremap <C-c> "+y
"Paster from OS buffer.
map <C-v> "+P

"change background color
set background=dark

"no compatibe with VI
set nocompatible

"enable loading the plugin files for specific file types
filetype plugin indent on

"show line number
set number

set history=50 "keep 50 lines of command line history

set showcmd "display incomplete commands

set encoding=utf-8

set tabstop=2 shiftwidth=2 noexpandtab smarttab
set scrolloff=8
set tw=0 wm=0

set hlsearch
set incsearch
"allow mouse
set mouse=a
"Show cursor always
set cursorline
set ruler

"Auto indentation
set autoindent

"We can undo file changes after save
set undofile
"Cache dir
set undodir=/tmp

"Correct backspace behavior
set backspace=indent,eol,start

set wildmenu
set wildmode=list:longest



let g:airline_powerline_fonts=0
" No extra space after opening and before closing symbol
let g:AutoPairsMultilineClose=0
let g:AutoPairsMapSpace=0
let g:AutoPairsFlyMode=0
" handle long lines correctly
set wrap
set textwidth=110
set colorcolumn=110
set formatoptions=qrn1

"type tt to write current data and time
nnoremap tt "=strftime("%F %T%z")<CR>p

" fsf - IN VISUAL MODE Ctrl+F open list of files in current directory
map <C-f> <Esc><Esc>:Files!<CR>
" fsf - IN INSERT MODE Ctrol+f serches text in current document (jsut as usual
" ctrl + f)
inoremap <C-f> <Esc><Esc>:BLines!<CR>
if executable('rg')
  let g:ackprg = '/usr/bin/rg --vimgrep --smart-case'
  vnoremap <leader>r :'<,'>Ack!<cr>
  nnoremap <leader>r :Ack!
endif
"show directory tree
nnoremap <leader>a :NERDTreeToggle<cr>

"cancel search highlights
nnoremap <leader><space> :noh<cr>

"git status
nnoremap <leader>w :Gstatus<cr>
" enable Normal mode keys in ru layout

"colorscheme
let g:molokai_original = 1
colorscheme molokai

" Display hidden charaters
set list
set listchars=tab:\ \ ,trail:·,eol:¬,nbsp:_



nnoremap <Left> :tabprevious<CR>
nnoremap <Right> :tabnext<CR>

"Strip all trailing whitespace
nnoremap <leader>f :StripWhitespace<cr>
highlight ExtraWhitespace ctermbg=red guibg=red
set statusline+=%#warningmsg#
set statusline+=%*

set autowrite
set autoread

nnoremap <F12> :vertical wincmd f<CR>


autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

if executable('clangd')
    augroup lsp_clangd
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
                    \ 'name': 'clangd',
                    \ 'cmd': {server_info->['clangd']},
                    \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
                    \ })
        autocmd FileType c setlocal omnifunc=lsp#complete
        autocmd FileType cpp setlocal omnifunc=lsp#complete
        autocmd FileType objc setlocal omnifunc=lsp#complete
        autocmd FileType objcpp setlocal omnifunc=lsp#complete
    augroup end
endif

"Show documentation
nnoremap <leader>e :LspHover<cr>
nnoremap <leader>d :LspDefinition<cr>


set efm=
set efm+=%f:%l:%c:\ %trror:%m
set efm+=%f:%l:%c:\ %tarning:%m
set efm+=%f:%l:\ %trror:%m
set efm+=%f:%l:\ %tarning:%m
