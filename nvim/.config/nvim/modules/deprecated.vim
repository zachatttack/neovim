let s:enabled = 0
function! ToggleConceal()
    if s:enabled
        set conceallevel=2
        let s:enabled = 0
    else
        set conceallevel=0
        let s:enabled = 1
    endif
endfunction

" nmap <Leader>c :call ToggleConceal()<CR>
