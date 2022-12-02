syntax on
filetype plugin indent on
:set number
:set foldmethod=syntax
:set termguicolors

:set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

:set updatetime=500
set wildmenu
set wildmode=longest:full,full

let g:ale_linter_aliases = {'vue': ['vue', 'javascript', 'html']} " vue ALE test

let g:ale_fixers = { 'javascript': ['eslint'],'vue':['eslint'] } 

let g:ale_linters = { 'javascript': ['eslint'],'vue':['eslint', 'vls'] }

let g:ale_fix_on_save = 1

let g:ale_lint_on_save = 1

let g:vim_vue_plugin_config = { 
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['typescript'],
      \   'style': ['css'],
      \}}

" the code below is me trying to execute YouCompleteMe
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'mattn/emmet-vim' " it helps witl HTML

Plugin 'leafOfTree/vim-vue-plugin'  " it says that it helps with vue

" Keep Plugin commands between vundle#begin/end.
Plugin 'ycm-core/YouCompleteMe' " YouCompleteMe adds pop up messages when hovering, if i want to disable just comment this out

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'} " this plug in is good because it displays info when I type


" Initialize plugin system
call plug#end()

:set showcmd " For some reason if I put it in the start of the file it doesn't work, maybe a plugin installed disable it


autocmd CursorHold * silent call CocActionAsync('highlight') "on cursor hold, highlight current symbol


nmap <M-Right> :vertical resize +1<CR>
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>
