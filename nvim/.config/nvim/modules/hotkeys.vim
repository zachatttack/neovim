let s:spell_enabled = 0
function! ToggleSpell()
    if s:spell_enabled
        set nospell
        let s:spell_enabled = 0
    else
        set spell
        let s:spell_enabled = 1
    endif
endfunction

nmap <Leader>s :call ToggleSpell()<CR>

nmap // :noh<CR>



nmap <F8> :TagbarToggle<CR>
nmap <Leader>r :set relativenumber<CR>
nmap <Leader>n :set norelativenumber<CR>

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" Navigate quickfix list with ease
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>
