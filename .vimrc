
set nu
set relativenumber
syntax on 
set tabstop=2 softtabstop=2
set shiftwidth=2
set noswapfile
set smartindent
set incsearch
set noeb vb t_vb=
set backspace=2
set laststatus=2
set nowrap

let &t_EI = "\e[3 q"
let &t_SI = "\e[5 q"

call plug#begin('~/vimFiles/plugged')
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
call plug#end()

nmap <C-f> : NERDTreeToggle<CR>
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<Cr>gv=gv
