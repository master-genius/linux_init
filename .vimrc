set nowrap
" let g:seoul256_srgb = 1
set completeopt-=preview
let g:enable_italic_font=1
let g:airline_theme='colorsbox'
set background=dark
colorscheme colorsbox-material
"colorscheme hybrid_material
"colorscheme tomorrow
"set background=light

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

filetype on
filetype plugin on
filetype indent on

autocmd BufNewFile *.c,*.php,*.sh,*.py,*.go exec ":call SetTitle()"
func SetTitle()
	if &filetype == 'python'
		call setline(1, "#!/lnpp/py37/bin/python3")
		call setline(2, "")
		call setline(3, "try:")
		call setline(4, "except:")
	endif
    
    if &filetype == 'php'
        call setline(1, "<?php")
        call setline(2,"")
    endif

	if &filetype == 'sh'
		call setline(1,"#!/bin/bash")
		call setline(2,"")
	endif

	if &filetype == 'c'
		call setline(1,"#include <stdio.h>")
		call setline(2,"#include <stdlib.h>")
		call setline(3,"")
		call setline(4,"int main(int argc, char *argv[]) {")
		call setline(5,"\treturn 0;")
		call setline(6,"}")
	endif
	if &filetype == 'go'
		call setline(1,"package main")
		call setline(2,"")
		call setline(3,"import (")
		call setline(4,"    \"fmt\"")
		call setline(5,")")
		call setline(6,"")
		call setline(7,"func main (){")
        call setline(8,"")
        call setline(9,"}")
        call setline(10,"")
	endif
endfunc

if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

