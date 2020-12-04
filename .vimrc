let mapleader=" "
nnoremap <SPACE> <Nop>
"set path+=**
set nocompatible        " Use Vim settings, rather than Vi settings
set softtabstop=2       " Indent by 2 spaces when hitting tab”
set shiftwidth=4        " Indent by 4 spaces when auto-indenting
set tabstop=4           " Show existing tab with 4 spaces width
syntax on               " Enable syntax highlighting
filetype indent on      " Enable indenting for files
set autoindent          " Enable auto indenting
set number              " Enable line numbers
set relativenumber
set nobackup            " Disable backup files
set laststatus=2        "show status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set wildmenu            " Display command line's tab complete options as a menu.
set mouse=a
set title
set encoding=utf-8
set confirm
set foldmethod=indent
set foldlevel=99
set backspace=indent,eol,start
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdtree' 
Plugin 'Rainbow-Parenthesis'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'leafgarland/typescript-vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mileszs/ack.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme gruvbox      " Set nice looking colorscheme
" autocmd vimenter * NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeShowHidden=1

" PYTHON from here: https://realpython.com/vim-and-python-a-match-made-in-heaven/
au BufNewFile,BufRead *.py
    \ set tabstop=4		|
    \ set softtabstop=4	| 
    \ set shiftwidth=4	|
    \ set textwidth=79	|
    \ set expandtab		|
    \ set autoindent	|
    \ set fileformat=unix
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"python with virtualenv support
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'
set wildignore+=**/site-packages/**

" TYPESCRIPT
au BufRead,BufNewFile *.ts   setfiletype typescript
set wildignore+=**/node_modules/**
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Ignore files in gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_cmd = 'CtrlP .'
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
