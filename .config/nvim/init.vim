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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
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
nnoremap <Leader>vs :vsp <CR>
" Type {<Space> + o} for search file content (FZF)
nnoremap <Leader>o :Files<CR> 
" Type {<Space> + O} for search file content with RipGrep (FZF)
nnoremap <Leader>O :Rg<CR>
