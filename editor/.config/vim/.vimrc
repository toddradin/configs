if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

"===================================== LINTER ============================================
Plug 'dense-analysis/ale'

"================================= COLOR SCHEMES =========================================
Plug 'https://github.com/joshdick/onedark.vim'

"=================================== COMPLETION ==========================================
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

syntax on
colorscheme onedark
set nu
set backspace=indent,eol,start
set clipboard=unnamed
set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab

let g:ale_fix_on_save = 1
