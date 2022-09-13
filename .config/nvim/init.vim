"define python bin locations
let g:python_host_prog = '$HOME/.virtualenvs/neovim2/bin/python'
let g:python3_host_prog = '$HOME/.virtualenvs/neovim3/bin/python'
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0

"define plugins
call plug#begin('~/.vim/plugged')
" Use release branch (recommend)

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-eslint', 'coc-lists', 'coc-highlight', 'coc-prettier', 'coc-snippets', 'coc-tsserver']

Plug 'jparise/vim-graphql'
Plug 'lepture/vim-velocity'

Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
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
set relativenumber             " Show relative line numbers

autocmd BufRead,BufNewFile *.htm,*.html,*.css setlocal tabstop=2 shiftwidth=2 softtabstop=2
