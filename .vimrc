syntax on
set encoding=utf8
set number
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set eb 
set expandtab
set hlsearch
set ignorecase
set incsearch
set showcmd
set showmatch
"set textwidth=80
set cursorline

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"
" "Theme
"
"set background=dark
colorscheme monokai


nnoremap <silent> <F5> :!clear;python %<CR>

" Shortcuts for opening Conque
map <F7> :ConqueTermSplit ipython <CR>
map <F9> :ConqueTermSplit R <CR>
map <C-F7> :ConqueTermVSplit ipython <CR>
map <C-F9> :ConqueTermVSplit R <CR>
"
" Some shortcuts for python
imap <silent> <leader>m <Esc>Vy<C-j><Esc> p
nmap <silent> <leader>m Vy<C-j><Esc> p 
vmap <silent> <leader>m y<C-j><Esc> p 

" Close every window and save
nmap <silent> <leader>ss :wqall <CR>
nmap <silent> <leader>q :qa! <CR>
nmap <silent> ,s :w <CR>
nmap <silent> ,q :q <CR>

" ALternate up and down with insertion
imap <silent> ,k <Esc> <C-w>k i
imap <silent> ,j <Esc> <C-w>j i
imap <silent> ,h <Esc> <C-w>h i
imap <silent> ,l <Esc> <C-w>l i

"Stop using arrows, please"
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Opening .vimrc easily
nnoremap <C-m>mm :sp ~/.vimrc <CR>

" Commands for helping using r
imap !libra library(dplyr)<CR>library(tidyr)<CR>library(readr)<CR>library(ggplot2)<CR>
imap !paste `%p%` <- function(e1,e2) {<CR>    return(paste0(e1,e2))<CR>}<CR>

" Configuring copy and paste beyond vi
nnoremap ,y "+y
nnoremap ,P "+P
nnoremap ,p "+p


"Configure Vundle
set nocompatible
"filetype off
"Vundle config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
"need this to install Vundle
Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/vim-scripts/Vim-R-plugin'
Plugin 'https://github.com/lervag/vimtex'
"        " ---- Plugins ----
Plugin 'https://github.com/lrvick/Conque-Shell/'
"Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'https://github.com/davidhalter/jedi-vim'
Plugin 'https://github.com/ervandew/supertab'
call vundle#end()

autocmd VimEnter * NERDTreeToggle 
