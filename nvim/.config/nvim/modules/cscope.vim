if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    " add any database in current directory
    if filereadable("cscope.out")
        silent cs add cscope.out
        " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        silent cs add $CSCOPE_DB
    endif
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
	nmap <Leader>cs :scs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <Leader>cg :scs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <Leader>cc :scs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <Leader>ct :scs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <Leader>ce :scs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <Leader>cf :scs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <Leader>ci :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <Leader>cd :scs find d <C-R>=expand("<cword>")<CR><CR>
	nmap <Leader>ca :scs find a <C-R>=expand("<cword>")<CR><CR>
endif
