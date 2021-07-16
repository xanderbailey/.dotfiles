" Remove newbie crutches in Command Mode
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>
" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
" " Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>
syntax on
set relativenumber
set spell
nnoremap <F9> :w <CR> :!python %<Enter>
set notagbsearch
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
Plug 'w0rp/ale'
Plug 'morhetz/gruvbox'
Plug 'szw/vim-tags'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'othree/yajs.vim'
call plug#end()
let g:ale_linters = {
  \ 'python': ['flake8', 'mypy'] ,
  \ }
let g:ale_fixers = {
  \ 'python': ['isort', 'black', 'autopep8'] ,
  \ }
let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1
let g:ale_hover_to_preview = 1
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
colorscheme gruvbox
highlight Normal ctermfg=188 ctermbg=235
se mouse+=a
set noswapfile
