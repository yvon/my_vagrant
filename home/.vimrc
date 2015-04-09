" Colors
set t_Co=256
colorscheme leo

" No beeps
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set nocompatible
syntax enable
filetype plugin indent on

set cursorline
set hidden
set textwidth=80
set ts=2
set sw=2
set expandtab
" set list
" set listchars=nbsp:¬,tab:»\ ,trail:·
set wildmode=longest:full
set wildmenu
set wrap

set exrc
set mouse=a
set relativenumber

nnoremap Q @q
nnoremap <C-j> <C-W>w
nnoremap <C-k> <C-w>W
nnoremap <F3> :cn<CR>
nnoremap <F4> :cp<CR>
nnoremap <F5> :n<CR>
nnoremap <F6> :N<CR>

au BufRead,BufNewFile Gemfile setfiletype ruby
au BufRead,BufNewFile Guardfile setfiletype ruby
au BufRead,BufNewFile *.god setfiletype ruby
au BufRead,BufNewFile *.pill setfiletype ruby
au BufRead,BufNewFile *.ejs setfiletype html
