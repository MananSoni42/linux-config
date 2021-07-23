" Center cursor whie scrolling

" Set relative numbers on screen
set scrolloff=8
set number
set relativenumber

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
call plug#end()

" Turn on syntax highlighting.
syntax on

" choose a color scheme: find more at https://github.com/rafi/awesome-vim-colorschemes
set termguicolors
let ayucolor="dark"
colorscheme ayu

" Remaps
let mapleader=","
noremap <leader>g :GFiles<CR>
noremap <leader>b :Files<CR>
