" Used plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
if !has('win32')
    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'
endif
call plug#end()

" Change color scheme
colorscheme gruvbox
set background=dark

" Setting plugins
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
if has('win32')
    let g:NERDTreeGitStatusGitBinPath = 'C:\Users\gabriel.santos\AppData\Local\Programs\Git\bin\git.exe'
else
    let g:NERDTreeGitStatusGitBinPath = '/usr/bin/git'
endif
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeShowBookmarks = 1

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

" enable ncm2 for all buffers
if !has('win32')
    autocmd BufEnter * call ncm2#enable_for_buffer()
    set completeopt=noinsert,menuone,noselect
endif

if has('win32')
    let g:airline_theme='dark'
    let g:gitgutter_git_executable = 'C:\Users\gabriel.santos\AppData\Local\Programs\Git\bin\git.exe'
else
    let g:gitgutter_git_executable = '/usr/bin/git'
endif

" Setting default editor configurations
set hidden
set number
set relativenumber
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Setting leader shortcuts
let mapleader="\<space>"
if has('win32')
    nnoremap <leader>ev :vsplit ~\AppData\Local\nvim\init.vim<cr> 
    nnoremap <leader>sv :source ~\AppData\Local\nvim\init.vim<cr>
else
    nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr> 
    nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
endif
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>pc :PlugClean<cr>
nnoremap <leader>th <c-w>K
nnoremap <leader>tv <c-w>H
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l
nnoremap <leader>n :NERDTreeToggle<cr>

" Setting resize shortcuts
nnoremap <F6> :resize -1<cr>
nnoremap <F7> :resize +1<cr>
nnoremap <F8> :vertical resize -1<cr>
nnoremap <F9> :vertical resize +1<cr>

