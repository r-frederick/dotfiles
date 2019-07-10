" List plugins here
call plug#begin('~/.local/share/nvim/plugged')

" Bundles and provides syntax plugins; loads on demands
Plug 'sheerun/vim-polyglot'

" Provides instant ESLint feedback. Must be used in a project with ESLint
" already setup
Plug 'w0rp/ale'

" Intellisense provider. Install extensions with ':CocInstall <ext name>'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" fzf wrapper for fuzzy finding in vim
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'

Plug 'tpope/vim-fugitive'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

call plug#end()

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" ALE configuration
let g:ale_sign_error = '😾'
let g:ale_sign_warning = '😿'
let g:ale_fixers = {
\ 'javascript': ['eslint'],
\}
" Fix files automatically on save
" let g:ale_fix_on_save = 1

let g:airline_theme = 'cool'
let g:airline_powerline_fonts = 1

