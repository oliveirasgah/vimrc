" List of all plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'dracula/vim'
call plug#end()

" Remap emmet shortcut
let g:user_emmet_leader_key=','

" Map <C-n> to open NERDtree
map <C-n> :NERDTreeToggle<CR>

" Change arrows in NERDtree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Icons for NERDTree git
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" Set color scheme
colorscheme dracula

" Set indent plugin for file type
filetype plugin indent on

" Turn syntax on
syntax on

" Set tabstop
set tabstop=4

" Set indent width
set shiftwidth=4

" Indent on backspace
set softtabstop=4
" Set tabs to spaces
set expandtab

" Set backspace to delete text
set backspace=2

" Set numbered lines
set number

" Set relative numbered lines
set relativenumber

" Feedback search
set incsearch

" Highlight search
set hlsearch

" Preferred encoding
set fileencoding=utf-8

" Encoding view
set encoding=utf-8

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '>'
let g:airline#extensions#tabline#left_alt_sep = '>'
