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
"Plug 'prabirshres/vim-lsp'
"Plug 'prabirshres/vim-lsp'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-vim-lsp'
call plug#end()
syntax on
let g:mapleader=','
set laststatus=2
vnoremap <C-c> "+y
set noswapfile
set wildmenu
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
set cursorline
set ruler
set autoindent
set undofile
set undodir=/tmp
set backspace=indent,eol,start
set clipboard=unnamed
set diffopt+=vertical
let g:AutoPairsMultilineClose=0
let g:AutoPairsMapSpace=0
" handle long lines correctly
set wrap
set textwidth=110
set colorcolumn=110
set formatoptions=qrn1


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

nnoremap <leader>a :NERDTreeToggle<cr>
nnoremap <leader><space> :noh<cr>
nnoremap <leader>w :Gstatus<cr>
" enable Normal mode keys in ru layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

let g:molokai_original = 1
colorscheme molokai

let g:AutoPairsMultilineClose=0
" No extra space after opening and before closing symbol
let g:AutoPairsMapSpace=0
" Display hidden charaters
set list
set listchars=tab:\ \ ,trail:·,eol:¬,nbsp:_

"Strip all trailing whitespace
nnoremap <leader>f :StripWhitespace<cr>
set mouse=a
highlight ExtraWhitespace ctermbg=red guibg=red
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


nnoremap <leader>e :LspHover<cr>
nnoremap <leader>d :LspDefinition<cr>


" set efm=
" set efm+=%f:%l:%c:\ %trror:%m
" set efm+=%f:%l:%c:\ %tarning:%m
" set efm+=%f:%l:\ %trror:%m
" set efm+=%f:%l:\ %tarning:%m
