let g:airline_theme="deus"
let g:airline#extensions#tabline#enabled = 1

" Note: You must define the dictionary first before setting values.
" Also, it's a good idea to check whether it exists as to avoid
" accidentally overwriting its contents.

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

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

" If you only see boxes here it may be because your system doesn't have
" the correct fonts. Try it in vim first and if that fails see the help
" pages for vim-airline :help airline-troubleshooting

