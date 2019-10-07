set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'tomtom/tcomment_vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'nelstrom/vim-visual-star-search'


Plugin 'scrooloose/nerdtree'
map <F4> :NERDTreeToggle<CR>
Plugin 'Xuyuanp/nerdtree-git-plugin'


Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'right': '~40%' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
noremap <silent> <F6> :w<CR>:History<CR>


Plugin 'terryma/vim-smooth-scroll'
noremap <silent> <c-k> :call smooth_scroll#up(&scroll, 10, 1)<CR>
noremap <silent> <c-j> :call smooth_scroll#down(&scroll, 10, 1)<CR>


Plugin 'ycm-core/YouCompleteMe'
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview


Plugin 'derekwyatt/vim-fswitch'
noremap <silent> <F5> :w<CR>:FSHere<CR>


Plugin 'majutsushi/tagbar'
noremap <F8> :TagbarToggle<CR>
" Use green color when highlighting current function
highlight TagbarHighlight guifg=Green ctermfg=Green


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Identation
set softtabstop=0
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

syntax on
set hlsearch
set showmatch
set number

set directory=$HOME/.vim/tmp//

" map <C-K> :py3f /usr/share/clang/clang-format-6.0/clang-format.py<cr>
" imap <C-K> <c-o>:py3f /usr/share/clang/clang-format-6.0/clang-format.py<cr>
