set nocompatible
filetype on
syntax on
set number
set incsearch
set ignorecase
set smartcase
set hlsearch
set wildmenu
set wildoptions=pum
set wildmode=longest:full
set undofile
set mouse=a
set clipboard=unnamedplus
source /usr/share/doc/fzf/examples/fzf.vim

"Install vimplug if its not already and specify plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'c9rgreen/vim-colors-modus'

call plug#end()

"Set up colorscheme
set background=dark
set termguicolors
colorscheme modus

"Keybindings
nnoremap <Space> <Nop>
nmap <Space> <Leader>
nmap <Leader>f :FZF<CR>
nmap <Leader>t :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>
nmap <Leader>d :bd<CR>
nmap <Leader>b :bnext<CR>
nmap <Leader>o :bro ol<CR>
nmap <Leader>e :e.<CR>

