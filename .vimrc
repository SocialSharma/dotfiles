" Automatic install of vim-plug 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
" Make sure to create 'plugged' folder
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'tmhedberg/SimpylFold'
Plug 'Konfekt/FastFold'
Plug 'w0rp/ale'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Code folding configs
set foldlevel=2
nnoremap <space> za

" ALE configs
let g:ale_lint_on_text_changed='never'
let g:ale_lint_on_enter=0
let g:ale_linters={
\   'python': ['flake8', 'pylint']
\}
let g:ale_fixers={
\   'python': ['autopep8', 'yapf', 'isort']
\}
let g:ale_warn_about_training_whitespace=0

" Buffer configs 
" Enables unsaved movement from buffer to buffer 
set hidden

" Split window configs
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Python-specific configs 
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |  
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


" Full-stack configs
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 

" Persistent undo across sessions
" Make sure to mkdir ~/.vim/undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" Show line numbers
set number

" Enable tab autocomplete in vim commandline 
set wildmode=longest,list,full
set wildmenu
