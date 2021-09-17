"Autocmds
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
autocmd BufRead *.py nmap <F5> :!clear;python3 %<CR>
autocmd BufRead *.rs nmap <F5> :!clear;cargo build<CR>
" autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufWinLeave *.Xresources :!xrdb $HOME/.dotfiles/Xresources/.Xresources


" Comment Leader symbols
autocmd FileType vim setlocal commentstring=\"%s
autocmd FileType vue setlocal commentstring=//%s
autocmd FileType xdefaults setlocal commentstring=!%s

autocmd FileType vue setlocal shiftwidth=3
autocmd FileType javascript setlocal shiftwidth=3
