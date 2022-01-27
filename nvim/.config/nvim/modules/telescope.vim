" Find files using Telescope command-line sugar.

nnoremap <leader>ff <cmd>Telescope find_files<cr>

nnoremap <leader>fg <cmd>Telescope live_grep<cr>

nnoremap <leader>fb <cmd>Telescope buffers<cr>

nnoremap <leader>fh <cmd>Telescope help_tagscr><cr>

lua <<EOF
require('telescope').setup {
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
            }
        }
    }
require('telescope').load_extension('fzy_native')
EOF
