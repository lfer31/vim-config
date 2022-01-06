syntax on
set number
set numberwidth=2
set relativenumber
set mouse=a
set clipboard=unnamed
set encoding=UTF-8
set showmatch
set ts=2
set sw=2
set smarttab
set nowrap

call plug#begin('~/.config/nvim/plugged')

Plug 'github/copilot.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion' 
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'yggdroot/indentline'

" post install (yarn install | npm install) then load plugin only for editing supported files
" Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdcommenter'
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'chrisgillis/vim-bootstrap3-snippets'

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" instalacion en ubuntu:  apt-get install silversearcher-ag

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'powerline/powerline'

Plug 'preservim/nerdtree' |
			\ Plug 'Xuyuanp/nerdtree-git-plugin' |
			\ Plug 'ryanoasis/vim-devicons'

" colorschemes
Plug 'sainnhe/sonokai'
Plug 'morhetz/gruvbox'

call plug#end()
filetype plugin indent on
filetype indent on
let mapleader = " "

"" extensiones for airline	
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'

" extensiones para ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" mapeo
nmap <Leader>s <Plug>(easymotion-s2)
nmap <C-n> :NERDTreeToggle<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>g :Ag<CR>
" removes highlighting of search terms
nnoremap <leader>, :nohlsearch<CR>
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" colorscheme sonokai
colorscheme gruvbox
