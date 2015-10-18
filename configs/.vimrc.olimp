set nocompatible
"""""""""""""Vundle""""""""""""""
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tComment'
Plugin 'krisajenkins/vim-pipe'
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_sign_column_always = 1
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_goto_buffer_command = 'horizontal-split'
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_global_ycm_extra_conf = '/usr/local/google/home/gagapov/.vim/.ycm_extra_conf.py'
call vundle#end()
"""""""""""""""""""""""""""""""""
" General
syntax on
set autoread
set clipboard=unnamedplus
"Indentation
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set cinoptions+=g0.5s,h0.5s
" Search
set incsearch
set smartcase
set hlsearch
set scrolloff=15
" Lookup Tweaks
set number
set wildmenu
set completeopt=menu
set showcmd
set splitright
set splitbelow
set cursorline
hi CursorLine cterm=bold
hi CursorLineNr cterm=bold
hi clear SignColumn
" Mappings
map <c-l> :tabn<CR>
map <c-h> :tabp<CR>
map <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
" Auto commands
if has("autocmd")
  " Jump to the last position
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  " C++ code
  au FileType cpp nmap <C-F11> :!clear&&run-c++<space>%<<CR>
  au FileType cpp nmap <F7>    :!clear&&compile-c++<space>%<space>O0<CR>
  au FileType cpp nmap <F8>    :!clear&&compile-c++<space>%<space>O2<CR>
  au FileType cpp nmap <F5>    :!clear&&debug-c++<space>%<CR>
endif
"""""""""""""""""""""""""""""""""
filetype plugin indent on
