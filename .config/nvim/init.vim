set encoding=utf8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-plug: auto install or self manage of vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob(stdpath('data') . '/site/autoload/plug.vim'))
   silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
call plug#end()

"==== My Mapping ===== "
nnoremap <SPACE><Nop>
let mapleader = ' '

nnoremap <Leader>n :NERDTreeToggle <CR>
nnoremap <Leader>w :w <CR>
nnoremap <Leader>q :q <CR>
nnoremap <Leader>e :e $MYVIMRC <CR>
nnoremap <Leader>wq :wq <CR>
nnoremap <Leader>r :source $MYVIMRC <CR>
nnoremap <Leader>wq :wq <CR>
nnoremap <Leader>nn :new <CR>
