set encoding=UTF-8
set relativenumber
set nu
syntax on 
set tabstop=2 softtabstop=2
set shiftwidth=2
set noswapfile
set smartindent
set incsearch
set nohls
set noeb vb t_vb=
set backspace=2
set laststatus=2
set wrap
set mouse=a
set clipboard=unnamedplus
set scrolloff=8
set signcolumn=yes
set hidden
set modifiable
let &t_EI = "\e[3 q"
let &t_SI = "\e[5 q"
let mapleader = " "

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'voldikss/vim-floaterm'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'rakr/vim-one'
Plug 'leafoftree/vim-vue-plugin'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
call plug#end()

set termguicolors
let g:airline_theme='one'
colorscheme one
set background=dark


nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nmap nt :tab split<CR>
nmap pt :tabp<CR>
nmap qt :tabn<CR>
nmap ;f :Files<CR>
nmap <C-f> : NERDTreeToggle<CR>
nmap <C-j> <plug>NERDCommenterToggle
nmap <C-s> :w<CR>
imap <C-s> <Esc><C-s>
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<Cr>gv=gv
inoremap ii <Esc>

" Emmet shortCuts
let g:user_emmet_mode='i'
let g:user_emmet_leader_key=',' 

"use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

command! -nargs=0 Prettier :CocCommand prettier.formatFile

let g:coc_global_extensions = [
	\ 'coc-snippets',
	\ 'coc-html',
	\ 'coc-prettier',
	\ 'coc-json',
	\ 'coc-css'
	\]

"floaterm
nmap <C-t> :FloatermNew --wintype=normal --autoclose=2 --height=0.15<CR>
nmap /t :FloatermToggle<CR>
