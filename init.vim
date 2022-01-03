syntax on
set number
set numberwidth=2
set relativenumber
set mouse=a
set clipboard=unnamed
set encoding=UTF-8
set showmatch
set ts=4
set sw=4
set smarttab

call plug#begin('~/.config/nvim/plugged')

Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion' 
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'powerline/powerline'

Plug 'preservim/nerdtree' |
			\ Plug 'Xuyuanp/nerdtree-git-plugin' |
			\ Plug 'ryanoasis/vim-devicons'

" colorschemes
Plug 'sainnhe/sonokai'
Plug 'morhetz/gruvbox'

call plug#end()
" extensiones for airline	
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" mapeo
let mapleader = " "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <C-n> :NERDTreeToggle<CR>
nmap <Leader>f :Files<CR>

" colorscheme sonokai
colorscheme gruvbox
