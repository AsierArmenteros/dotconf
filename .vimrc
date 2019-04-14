syntax on

set tabstop=4
set shiftwidth=4
set expandtab

set nu!
set mouse=a

set nocompatible
filetype off
set encoding=utf-8
set t_Co=256

set laststatus=2
set noshowmode

set colorcolumn=80

set noerrorbells visualbell t_vb=

nnoremap <C-a> :tabprevious<CR>
nnoremap <C-d>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-Left> <Esc>:tabprevious<CR>i
inoremap <C-Right>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
map <C-w> :tabclose<CR>

nnoremap <C-p> :set invpaste paste?<CR>
set pastetoggle=<C-p>

nnoremap k gk
nnoremap j gj

set go-=T
set go-=m
set go-=r
set go-=R
set go-=l
set go-=L


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'flazz/vim-colorschemes'
Plugin 'w0rp/ale'
Plugin 'spolu/dwm.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-obsession'
Plugin 'godlygeek/tabular'
Plugin 'ntpeters/vim-better-whitespace'

Plugin 'gcavallanti/vim-noscrollbar'

Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
Plugin 'groenewege/vim-less'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-markdown'
Plugin 'reedes/vim-pencil'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-syntastic/syntastic'

Plugin 'Shougo/neocomplete.vim'

call vundle#end()

filetype plugin indent on
syntax enable


colorscheme desertink



let g:pencil#textwidth = 79
let g:airline_section_x = '%{PencilMode()}'

let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {
\   'rust': [],
\}

let g:indentLine_char = '|'
let g:indentLine_color_term = 239

map <C-y> :NERDTreeToggle<CR>

map <C-x> <Plug>CommentaryLine
vmap <C-x> <Plug>Commentary

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

let g:table_mode_corner_corner = '+'
let g:table_mode_header_fillchar = '='

map <Esc>[B <Down>

if &term =~ '256color'
   set t_ut=
endif

au BufRead /tmp/mutt* normal :g/^> -- $/,/^$/-1d^M/^$^M^L
