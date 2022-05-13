set encoding=UTF-8
set relativenumber
set title
set nu
syntax on 
set tabstop=2 softtabstop=2
set shiftwidth=2
set noswapfile
set smartindent
set smartcase
set incsearch
set ignorecase
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
Plug 'tpope/vim-commentary'
Plug 'voldikss/vim-floaterm'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'leafoftree/vim-vue-plugin'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim', {'name':'dracula'}
Plug 'gko/vim-coloresque'
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
call plug#end()

set termguicolors
let g:airline_theme='onedark'
colorscheme onedark
set background=dark
highlight Normal guibg=none

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nmap nt :tab split<CR>
nmap pt :tabp<CR>
nmap qt :tabn<CR>
nmap ;f :Files<CR>
nmap <C-f> : NERDTreeToggle<CR>
nmap <C-s> :Prettier<CR> :w<CR>
imap <C-s> <Esc><C-s>
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<Cr>gv=gv
inoremap ii <Esc>
nmap <leader>hh :split<Cr>
nmap <leader>s :vsplit<Cr>


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


"vim-prettier conf:

let g:prettier#config#tab_width = "2"

" Git Gutter
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red

nmap ) <Plug>(GitGutterNextHunk)
nmap ( <Plug>(GitGutterPrevHunk)


"enable colored indent
let g:indent_guides_enable_on_vim_startup = 1
