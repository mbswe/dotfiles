:set relativenumber number
:set laststatus=2
:set statusline+=%#warningmsg#
:set statusline+=%{SyntasticStatuslineFlag()}
:set statusline+=%*
:set completeopt=noinsert,menuone,noselect

" use 4 spaces instead of tab (to replace existing tab use :retab)
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" save undo trees in files
set undofile
set undodir=$VIMCONFIG/undo

" number of undo saved
set undolevels=10000 " How many undos
set undoreload=10000 " number of lines to save for undo

" no swap file
set noswapfile

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'scrooloose/nerdtree'              " NERDTree
Plug 'morhetz/gruvbox'                  " Gruvbox theme
Plug 'kshenoy/vim-signature'            " Shows marks in gutter
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-cursorword'
Plug 'vim-syntastic/syntastic'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'phpactor/ncm2-phpactor'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips' | Plug 'phux/vim-snippets'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Show hidden files by default
let NERDTreeShowHidden = 1

" Change leader to space
let mapleader = "\<space>"

" Syntastic stuff
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ["php", "phpmd"]
let g:python3_host_prog = "/usr/bin/python3"

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd BufEnter * call ncm2#enable_for_buffer()
autocmd VimEnter * NERDTree

colorscheme gruvbox
