" Explorer
nmap <F4> :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

"use <tab> for completion
function! TabWrap()
    if pumvisible()
        return "\<C-N>"
    elseif strpart( getline('.'), 0, col('.') - 1 ) =~ '^\s*$'
        return "\<tab>"
    elseif &omnifunc !~ ''
        return "\<C-X>\<C-O>"
    else
        return "\<C-N>"
    endif
endfunction

" power tab
imap <silent><expr><tab> TabWrap()

"Map ctrl-y to enter
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

"Clangd header switch
nmap <Leader>h :CocCommand clangd.switchSourceHeader<CR> 

let g:coc_global_extensions = [ 
            \'coc-pairs', 
            \'coc-eslint',
            \'coc-clangd',
            \'coc-tsserver', 
            \'coc-rust-analyzer', 
            \'coc-json', 
            \'coc-explorer',
            \'coc-vimtex',
            \]
