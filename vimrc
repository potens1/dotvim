set nocompatible

set t_Co=256
colorscheme candycode


"Pathogen load
execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

set mouse=a

set shiftround
set laststatus=2
set ruler
set showcmd
set wildmenu
syntax on
set encoding=utf-8

"PowerLine
source /home/nic/.local/lib/python2.7/site-packages/powerline/ext/vim/source_plugin.vim

" UltiSnips
let g:UltiSnipsSnippetsDir="~/.vim/bundle/UltiSnips/UltiSnips"

" for dbext
let dbext_default_SQLITE_bin = 'sqlite3'


