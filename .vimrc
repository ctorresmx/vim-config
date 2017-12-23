set encoding=utf-8
set nu
let python_highlight_all=1
syntax on
set listchars=tab:>-,trail:.,precedes:<,extends:>,eol:$
set list
set laststatus=2
set mouse=a
set splitright

" PEP8
au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix |
	\ set foldmethod=indent

set colorcolumn=80

" Enable folding
set foldlevel=99
nnoremap <space> za

" Color scheme
colorscheme molokai
highlight Normal ctermfg=grey ctermbg=black

" Split view
map <C-Down> <C-W>j
map <C-Up> <C-W>k
map <C-Left> <C-W>h
map <C-Right> <C-W>l

map <S-Down> 5j
map <S-Up> 5k

" Tabs
noremap <C-S-Left> :tabp<CR>
noremap <C-S-Right> :tabn<CR>

" Handy shorcuts
map <C-S-Down> :m .+1<CR>
map <C-S-Up> :m .-2<CR>
map <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" Vundle config
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=60

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
