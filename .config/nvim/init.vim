"define python bin locations
let g:python_host_prog = '$VIRTUALFISH_HOME/neovim2/bin/python'
let g:python3_host_prog = '$VIRTUALFISH_HOME/neovim3/bin/python'

"define ale settings
let g:ale_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1

"define fixers
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'json': ['fixjson'],
\   'python': ['black'],
\}

"define plugins
call plug#begin('~/.vim/plugged')
" Use release branch (recommend)

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'kevinhwang91/rnvimr'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

"enable proper term colors
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
set termguicolors

"enable material colorscheme
colorscheme nord

"lightline config
set showtabline=2
let g:lightline = {
\   'colorscheme': 'nord',
\   'active': {
\     'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
\   },
\   'tabline': {
\     'left': [ ['buffers'] ],
\     'right': [ ['close'] ]
\   },
\   'component_expand': {
\     'buffers': 'lightline#bufferline#buffers'
\   },
\   'component_type': {
\     'buffers': 'tabsel'
\   }
\ }
if !has('gui_running')
  set t_Co=256
endif
set noshowmode

"enable line numbers
set number


let mapleader = " " " map leader to space
set timeoutlen=500 " set timeout to 500ms
map <leader>h :noh<CR>
map <leader>t :Files<CR>
map <leader>f :RnvimrToggle<CR>
map <leader>r :History:<CR>
map <leader>w :w<CR>
map <leader>e :bp<CR>
map <leader>i :bn<CR>
