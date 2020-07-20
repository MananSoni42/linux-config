set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" change vim status bar
Plugin 'itchyny/lightline.vim'
set laststatus=2
function! LightlineReadonly()
  return &readonly && &filetype !~# '\v(help|vimfiler|unite)' ? 'RO' : ''
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0

" file manager inside vim
Plugin 'preservim/nerdtree'
nmap <C-n> :NERDTreeToggle<CR>

" auto bracket matcher
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Set compatibility to Vim only.
set nocompatible

" Show line numbers
set number

" set tab options
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" fix backspace
set backspace=indent,eol,start

" highlisght search terms
set hlsearch    

" show search terms as you type
set incsearch

" Turn on syntax highlighting.
syntax on

" map F9 to compile code and show the output on a clean screen for cpp files
" (mostly used for comp coding)
map <F9> :w <CR> :!clear; g++ % -o %< && ./%< <CR>

" choose a color scheme: find more at https://github.com/rafi/awesome-vim-colorschemes
syntax on
colorscheme OceanicNext
