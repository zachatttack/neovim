set shell=/bin/sh
nnoremap <Leader>v :e $MYVIMRC <bar> lcd ~/.dotfiles<cr>

"Plugins
source $HOME/.config/nvim/plugs/plugins.vim
"Modules configuration
source $HOME/.config/nvim/modules/tmux-navigator.vim
source $HOME/.config/nvim/modules/vimtex.vim
source $HOME/.config/nvim/modules/cscope.vim
source $HOME/.config/nvim/modules/ack.vim
source $HOME/.config/nvim/modules/treesitter.vim
source $HOME/.config/nvim/modules/coc_configs.vim
source $HOME/.config/nvim/modules/hotkeys.vim
source $HOME/.config/nvim/modules/autocmd.vim
source $HOME/.config/nvim/modules/fugative.vim
source $HOME/.config/nvim/modules/gutentags.vim
source $HOME/.config/nvim/modules/telescope.vim
"Regular vim settings
syntax on "treesitter also used
set mouse=a
set number
set relativenumber
set cursorline 
set so=7
set noswapfile
set hidden
set splitbelow
set splitright
set smartcase
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
" set cindent
set cino+=(0
"Color stuff
set t_Co=256
set background=dark
colorscheme zephyr

hi Normal guibg=NONE ctermbg=NONE 
hi Search ctermbg=grey
highlight HighlightedyankRegion cterm=reverse gui=reverse

let g:lightline = { 
            \ 'colorscheme': 'wombat',
            \ }

let g:rg_binary="/home/zach/.cargo/bin/rg"

let g:python_highlight_all = 1
let g:c_syntax_for_h = 1
"MD
let g:mkdp_browser = 'brave.exe'

set path+=/home/zach/.platformio/packages/framework-zephyr/include/
