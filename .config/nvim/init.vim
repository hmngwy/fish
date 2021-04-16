"define python bin locations
let g:python_host_prog = '$HOME/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '$HOME/.pyenv/versions/neovim3/bin/python'
"define ale settings
let g:ale_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
"define fixers
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['standard'],
\   'typescript': ['ts-standard'],
\   'json': ['fixjson'],
\   'python': ['black'],
\}
"define linters
let g:ale_linters = {
\   'javascript': ['standard'],
\}

"define plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
call plug#end()

"enable proper term colors
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
set termguicolors

"enable material colorscheme
let g:material_terminal_italics = 1
colorscheme material

"enable line numbers
set number
