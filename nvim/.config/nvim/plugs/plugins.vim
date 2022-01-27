call plug#begin('~/.local/share/nvim/plugged')

"Util
Plug 'tpope/vim-commentary'
" Plug '/home/zach/.fzf/bin/fzf'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
" Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'sheerun/vim-polyglot'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'Yggdroot/indentLine'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-signify'
Plug 'neomake/neomake'
Plug 'coddingtonbear/neomake-platformio'
Plug 'neovim/nvim-lspconfig'
Plug 'prabirshrestha/vim-lsp'
" Plug 'CoatiSoftware/vim-sourcetrail'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'machakann/vim-highlightedyank'
"Plug 'vimwiki/vimwiki'
"Plug 'reedes/vim-pencil'
"Lang Syntax
"Plug 'vim-python/python-syntax'
"Plug 'vim-perl/vim-perl'
"Plug 'rust-lang/rust.vim'
"Plug 'posva/vim-vue'
"Plug 'kovetskiy/sxhkd-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Colorschemes
" Plug 'wadackel/vim-dogrun'
" Plug 'wojciechkepka/bogster'
" Plug 'jaredgorski/spacecamp'
" Plug 'morhetz/gruvbox'
" Plug 'dracula/vim'
Plug 'glepnir/zephyr-nvim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'



Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
Plug 'mhinz/vim-startify'
Plug 'lilydjwg/colorizer'
Plug 'nvim-lua/plenary.nvim' "required for telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'ThePrimeagen/harpoon'
call plug#end()

source /home/zach/.config/nvim/plug-config/coc.vim
