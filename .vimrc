set nowrap
" let g:seoul256_srgb = 1
set completeopt-=preview
let g:enable_italic_font=1
let g:airline_theme='colorsbox'
set background=dark
colorscheme colorsbox-material
"colorscheme hybrid
"set background=light

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

