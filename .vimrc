""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""" MY MAPS """""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=" "
nnoremap <SPACE> <Nop>
nnoremap <SPACE>s :w<CR>
nnoremap <SPACE>qq :qa<CR>
nnoremap <SPACE>t :NERDTreeToggle<CR>
nnoremap <SPACE>f :<C-u>FZF<CR>
nnoremap jn <C-d>
nnoremap km <C-u>
nnoremap <SPACE>1 :1b<CR>
nnoremap <SPACE>2 :2b<CR>
nnoremap <SPACE>3 :3b<CR>
nnoremap <SPACE>4 :4b<CR>
nnoremap <SPACE>5 :5b<CR>
nnoremap <SPACE>6 :6b<CR>
nnoremap <SPACE>7 :7b<CR>
nnoremap <SPACE>8 :8b<CR>
nnoremap <SPACE>9 :9b<CR>
nnoremap <SPACE>w <C-w><C-w>
noremap <SPACE>q :bp<bar>sp<bar>bn<bar>bd<CR>
tnoremap <Esc> <C-\><C-n>
map <C-_> <Plug>NERDCommenterToggle
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""" VIM CONFIGS """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set path+=**
set nocompatible        " Use Vim settings, rather than Vi settings
set softtabstop=2       " Indent by 2 spaces when hitting tab”
set shiftwidth=4        " Indent by 4 spaces when auto-indenting
set tabstop=4           " Show existing tab with 4 spaces width
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
syntax on               " Enable syntax highlighting
filetype plugin indent on      " Enable indenting for files
set autoindent          " Enable auto indenting
set number              " Enable line numbers
set relativenumber
" set nobackup            " Disable backup files
set laststatus=2        "show status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set wildmenu            " Display command line's tab complete options as a menu.
set title
set encoding=utf-8
" set confirm
set foldmethod=indent
set foldlevel=99
set backspace=indent,eol,start
set undofile   " Maintain undo history between sessions”
set undodir=~/.vim/undodir//
set directory=~/.vim/swp//
set backupdir=~/.vim/backup//
filetype off                  " required

if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>sy  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


""""""""""""""""" Plugins Config """"""""""""""""""""


call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdtree' 
Plugin 'preservim/nerdcommenter'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mileszs/ack.vim'
Plugin 'alx741/vim-rustfmt'
Plugin 'junegunn/fzf'
Plugin 'Vimjas/vim-python-pep8-indent'
"Plugin 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'joshdick/onedark.vim'
Plugin 'ryanoasis/vim-devicons'
call vundle#end()            " required

filetype plugin indent on    " required
set splitright
set splitbelow
" open terminal on space+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <SPACE>n :call OpenTerminal()<CR>

colorscheme gruvbox      " Set nice looking colorscheme

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1

set wildignore+=**/site-packages/**
set wildignore+=**/node_modules/**
set wildignore+=**/dist/**

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-sh', 'coc-pyright', 'coc-rust-analyzer']

""""""""""""" Color Schemes """"""""""""""""
set termguicolors
colorscheme onedark
" colorscheme japanesque
" colorscheme srcery
" colorscheme materialtheme
" autocmd FileType rust colorscheme srcery
" autocmd FileType python colorscheme onedark

" Normal         xxx ctermfg=145 ctermbg=235 guifg=#ABB2BF guibg=#282C34
highlight Normal guibg=#202328
highlight MatchParen guifg=#C678DD guibg=#504066
highlight LineNr    guifg=#151822
highlight CursorLineNr guifg=#56B6C2
highlight Error guifg=#f57373 guibg=#804040
highlight vimError guifg=#f57373 guibg=#804040

hi IndentGuidesEven guibg=#2a2e30 guifg=#24282a
hi IndentGuidesOdd guibg=#262a2c guifg=#24282a
hi Comment cterm=italic guifg=#4a5158
hi String guifg=#98C379 guibg=#2a2e34

""" browns
" function params: numbers and constants
" hi Keyword guifg=#907161
" hi Statement guifg=#56B6C2
" hi Conditional guifg=#56B6C2

" Yellows
hi Number guifg=#E5C07B
hi Special guifg=#E5C07B
hi Boolean guifg=#E5C07B
hi Type guifg=#F0A15F
" #D19A66

" purple
hi CtrlPMatch guifg=#ba9ef7
hi Visual guibg=#364652
hi Keyword guifg=#ba9ef7
hi Function guifg=#5682A3

" dark grey, RUST preproc
hi Preproc guifg=#37505C

""" Pink
"""""" vim-jsx ONLY
hi Identifier guifg=#D96Ab2
" hi Identifier cterm=italic guifg=#D96Ab2
" hi Statement guifg=#D96AB2
hi Conditional guifg=#D96AB2

""" Go and Python
" Light blue
autocmd FileType python,go highlight Keyword guifg=#59ACE5
autocmd FileType python,go highlight goDeclaration guifg=#59ACE5
" Dark blue
autocmd FileType python,go highlight Function guifg=#2974a1
autocmd FileType python,go highlight goConditional guifg=#2974a1
" cyan
autocmd FileType python,go highlight goStatement guifg=#56B6C2
autocmd FileType python,go highlight goRepeat guifg=#56B6C2


" " dark red
" hi tsxTagName guifg=#E06C75
" " orange
" hi tsxCloseString guifg=#F99575
" hi tsxCloseTag guifg=#F99575
" hi tsxAttributeBraces guifg=#F99575
" hi tsxEqual guifg=#F99575
" " yellow
" hi tsxAttrib guifg=#F8BD7F cterm=italic

" light blue
hi tsxTagName guifg=#59ACE5
hi tsxComponentName guifg=#59ACE5
" dark blue
hi tsxCloseString guifg=#2974a1
hi tsxCloseTag guifg=#2974a1
hi tsxAttributeBraces guifg=#2974a1
hi tsxEqual guifg=#2974a1
hi tsxCloseTagName guifg=#2974a1
hi tsxCloseComponentName guifg=#2974a1
" green
hi tsxAttrib guifg=#1BD1C1


" cyan
hi Constant guifg=#56B6C2
hi typescriptBraces guifg=#56B6C2
hi typescriptEndColons guifg=#56B6C2
hi typescriptRef guifg=#56B6C2
hi typescriptPropietaryMethods guifg=#56B6C2
hi typescriptEventListenerMethods guifg=#56B6C2
hi typescriptFunction guifg=#56B6C2
hi typescriptVars guifg=#56B6C2
hi typescriptParen guifg=#56B6C2
hi typescriptDotNotation guifg=#56B6C2
hi typescriptBracket guifg=#56B6C2
hi typescriptBlock guifg=#56B6C2
hi typescriptJFunctions guifg=#56B6C2
hi typescriptSFunctions guifg=#56B6C2
hi typescriptInterpolationDelimiter guifg=#56B6C2
hi typescriptExceptions guifg=#DDA671
" hi typescriptIdentifier guifg=#907161
" hi typescriptStorageClass guifg=#907161
hi typescriptIdentifier guifg=#65809D
hi typescriptStorageClass guifg=#65809D
" JSON
hi jsonCommentError cterm=italic guifg=#4a5158

" javascript
hi jsParens guifg=#56B6C2
hi jsObjectBraces guifg=#C678DD
hi jsFuncBraces guifg=#56B6C2
hi jsObjectFuncName guifg=#D19A66
hi jsObjectKey guifg=#56B6C2

" vim-jsx-typescript
hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi ApolloGraphQL guifg=#CB886B
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66


" JSX Dark Blue and Neon Green highlights
hi xmlEndTag guifg=#2974a1
" hi tsxCloseString guifg=#2974a1
hi tsxCloseString guifg=#15608f
hi htmlTag guifg=#2974a1
hi htmlEndTag guifg=#2974a1
hi htmlTagName guifg=#59ACE5
hi tsxAttrib guifg=#1BD1C1

hi tsxTypeBraces guifg=#BDA7CC
hi tsxTypes guifg=#8D779C
hi tsxIfOperator guifg=#56B6C2
hi tsxElseOperator guifg=#56B6C2


" rust cyan
hi rustModPath guifg=#DF997A
hi rustFuncCall guifg=#60A0D0
hi rustFuncName guifg=#60A0D0
hi rustTrait guifg=#C898C8
hi rustCommentLine guifg=#aaaaaa guifg=#444444


hi rustFoldBraces guifg=#FFEAD0
hi rustBoxPlacementBalance guifg=#C898C8

hi ALEError      guibg=#612E2D cterm=italic
hi ALEWarning    guibg=#523D30 cterm=italic
" Coc linting colors
hi CocErrorHighlight   guibg=#612E2D cterm=italic
hi CocWarningHighlight guibg=#523D30 cterm=italic
hi CocHighlightText    guibg=#40334A

hi CocInfoHighlight    guibg=#A5BFD5 cterm=italic
hi CocHintHighlight    guibg=#A5BFD5 cterm=italic

hi CocErrorSign   guifg=#CD584F
hi CocWarningSign guifg=#D3785D
