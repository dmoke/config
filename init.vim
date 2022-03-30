set scrolloff=7
set encoding=utf-8
set mouse=a
set number
set noswapfile
set relativenumber
set autoindent
set smarttab

inoremap ii <esc>

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' } " Coc wrapper

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeShowHidden=1

:colorscheme termschool

inoremap <expr> <Enter> pumvisible() ? coc#_select_confirm() : "<Enter>"
