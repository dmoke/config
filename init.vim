set mouse=a
set number
set noswapfile
set relativenumber
set autoindent
set undolevels=1000
set shiftwidth=4
set scrolloff=7
set smarttab
set splitright
set nohlsearch

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Sciheme
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary.git' " Commentary
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/preservim/tagbar.git' " Tagbar
Plug 'https://github.com/voldikss/vim-floaterm.git' " Terminal
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' } " Coc wrapper

set encoding=UTF-8

call plug#end()
" :CocInstall coc-python
" :CocInstall coc-snippets
" :CocInstall coc-html
" :CocInstall coc-tsserver

nnoremap gw :w<CR>
nnoremap \\ :w<Enter>:!python %<Enter>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-a> :NERDTreeToggle<CR>
nnoremap <S-t> :TagbarToggle<CR>
nnoremap <Tab> <C-w>w

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeShowHidden=1
let g:Terminal_InsertOnEnter=1

:colorscheme termschool

inoremap \\ <Esc>:w<Enter>:!python %<CR>
inoremap ii <Esc>
inoremap gw <Esc>:w<CR>
inoremap <expr> <Enter> pumvisible() ? coc#_select_confirm() : "<Enter>"
inoremap <A-h> <left>
inoremap <A-j> <down>
inoremap <A-k> <up>
inoremap <A-l> <right>

" Terminal
" For example: 2<C-t> will open terminal 2
nnoremap   <silent>   <F7>    :FloatermNew --height=0.25 --width=1 --name=Pepega --wintype=split --autoclose=2<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew --height=0.25 --name=Pepega --width=1 --wintype=split --autoclose=2<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <C-Tab> <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR<CR>
nnoremap   <silent>   <c-t>   :FloatermToggle Pepega<CR>
tnoremap   <silent>   <c-t>   <C-\><C-n>:FloatermToggle Pepega<CR>

" :verbose imap <Tab>
" :iunmap <Tab>
