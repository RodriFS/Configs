""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoread "When a file has been detected to have been changed outside of Vim and it has not been changed inside of Vim, automatically read it again
set backspace=indent,eol,start "Each item allows a way to backspace over something
set hidden "buffer becomes hidden when it is abandoned
set history=1000 "Ex command history
set undofile   " Maintain undo history between sessions”

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" USER INTERFACE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark "When set to "dark", Vim will try to use colors that look good on a dark background
set cmdheight=2 "Number of screen lines to use for the command-line.
set cursorline "Highlight the text line of the cursor
set laststatus=2 "influences when the last window will have a status line: 2=always
set mouse=a "Enables mouse, a=all modes
set noshowmode "Enables showing the mode you're in (currently shown in bar)
set number "Print the line number in front of each line
set ruler "Shows line and column number of the cursor position
set scrolloff=20 "Minimal number of screen lines to keep above and below the cursor
set shortmess+=c "helps to avoid all the hit-enter prompts caused by file messages, check docs
set showcmd "Show (partial) command in the last line of the screen
set showmatch "When a bracket is inserted, briefly jump to the matching one
set sidescrolloff=5 "The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
set termguicolors "uses 24-bit color
set updatetime=250 "If this many milliseconds nothing is typed the swap file will written to disk
set wildmenu "command-line completion operates in an mode
set colorcolumn=116 "Highlights screen column
set laststatus=2 "show status line
set title "Show title of window
set relativenumber

if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INDENTATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent "Enables auto indentation
set expandtab "Expands tabs to spaces
set shiftwidth=2 "Number of spaces to use for indentation
let &softtabstop=&shiftwidth "Number of spaces that a tab counts for

filetype plugin indent on "Activates indentation for different file types

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCH
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set hlsearch "Highlight search patterns
set ignorecase "Ignores case when searching
set incsearch "Incremental search, shows matches as you type
set smartcase "Overrides ignorecase if you use capitals in searches

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TEXT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set textwidth=116 "Maximum width of text that is being inserted.
set encoding=utf-8
set linebreak "Prevents breaking of words when wrapping
set listchars=extends:▸,nbsp:⎵,precedes:◂,tab:⇥· "Strings to use in 'list' mode and for the :list command

match ErrorMsg /\s\+$/ "Highlight trailing whitespace
syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DIRECTORIES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set undodir=~/.vim/undodir//
set directory=~/.vim/swp//
set backupdir=~/.vim/backup//
set wildignore+=**/site-packages/**
set wildignore+=**/node_modules/**
set wildignore+=**/dist/**


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISCELLANEOUS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible        " Use Vim settings, rather than Vi settings
set confirm "Certain operations will raise a confirm dialog
set grepprg=rg\ --vimgrep\ --smart-case\ --follow "Program to use for :grep command
set shell=zsh "Shell
set viminfofile=NONE "File to show at start of vim
set splitright
set splitbelow

if !has('nvim')
"Name of the terminal type for which mouse codes are to be recognized.
  set ttymouse=xterm2
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEYBOARD MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader="º"
nnoremap <leader> <Nop>

" Clear current search highlights
nnoremap <silent> <leader><Space> :nohlsearch<CR>

" Move half a screen
nnoremap jn <C-d>
nnoremap km <C-u>
" Move between buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
" Move between active windows
nnoremap <silent> <C-H> <C-W>h
nnoremap <silent> <C-J> <C-W>j
nnoremap <silent> <C-K> <C-W>k
nnoremap <silent> <C-L> <C-W>l
" Resize current split by +/- 5
nnoremap <silent> <C-Left> :vertical resize -5<CR>
nnoremap <silent> <C-Down> :resize +5<CR>
nnoremap <silent> <C-Up> :resize -5<CR>
nnoremap <silent> <C-Right> :vertical resize +5<CR>
" Move cursor vertically by visual line
nnoremap <silent> j gj
nnoremap <silent> k gk
" Move visual selection
nnoremap <silent> <leader><down> :m +1<CR>gv=gv
nnoremap <silent> <leader><up> :m -2<CR>gv=gv
xnoremap <silent> <leader><down> :m '<+1<CR>gv=gv
xnoremap <silent> <leader><up> :m '>-2<CR>gv=gv
" Make . work with visually selected lines
xnoremap <silent> . :normal.<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()
  Plug 'morhetz/gruvbox'
  Plug 'preservim/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-fugitive'
  Plug 'sheerun/vim-polyglot'
call plug#end()

colorscheme gruvbox

source $HOME/_configs/coc.vim
source $HOME/_configs/airline.vim
source $HOME/_configs/nerd.vim
source $HOME/_configs/fzf.vim
