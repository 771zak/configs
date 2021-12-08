set encoding=UTF-8
set nu
set relativenumber
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
set nowrap
set mouse=a
set scrolloff=8
set signcolumn=yes

let &t_EI = "\e[3 q"
let &t_SI = "\e[5 q"

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'voldikss/vim-floaterm'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme gruvbox

nmap nt :tab split<CR>
nmap pt :tabp<CR>
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
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=',' 

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()


"floaterm
nmap <C-t> :FloatermNew --wintype=normal --height=0.2<CR>