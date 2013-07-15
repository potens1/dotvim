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
" source ~/.local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

if has("python") && !empty($VIRTUAL_ENV)
python << EOF
import os
import sys
a = os.environ['VIRTUAL_ENV'] + '/bin/activate_this.py'
execfile(a, dict(__file__ = a))
if 'PYTHONPATH' not in os.environ:
    os.environ['PYTHONPATH'] = ''
    os.environ['PYTHONPATH'] += ":"+os.getcwd()
    os.environ['PYTHONPATH'] += ":".join(sys.path)
EOF
endif




" UltiSnips
let g:UltiSnipsSnippetsDir="~/.vim/bundle/ultisnips/UltiSnips"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snippets", "angular-vim-ultisnips"]

" for dbext
let dbext_default_SQLITE_bin = 'sqlite3'

" Map TagBar to F8
nmap <F8> :TagbarToggle<CR>

" Tab should be 2 spaces in HTML and js
autocmd FileType html
  \ setlocal shiftwidth=2 |
  \ setlocal tabstop=2 |
  \ setlocal softtabstop=2
autocmd FileType js
  \ setlocal shiftwidth=2 |
  \ setlocal tabstop=2 |
  \ setlocal softtabstop=2
autocmd FileType mako
  \ setlocal shiftwidth=2 |
  \ setlocal tabstop=2 |
  \ setlocal softtabstop=2
autocmd FileType css
  \ setlocal shiftwidth=2 |
  \ setlocal tabstop=2 |
  \ setlocal softtabstop=2

" Surround for translation in mako
autocmd FileType mako let g:surround_117="${_(u\"\r\")}"
