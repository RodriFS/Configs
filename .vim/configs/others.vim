""""""""""""" Color Schemes """"""""""""""""
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

"hi CocInfoHighlight    guibg=#A5BFD5 cterm=italic
"hi CocHintHighlight    guibg=#A5BFD5 cterm=italic

hi CocErrorSign   guifg=#CD584F
hi CocWarningSign guifg=#D3785D
