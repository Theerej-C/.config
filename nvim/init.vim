""" Options

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim


" Plugins
call plug#begin()
    Plug 'voldikss/vim-floaterm'
    Plug 'ryanoasis/vim-devicons'
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'mhinz/vim-startify'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'nvim-treesitter/playground'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'cdelledonne/vim-cmake'
    Plug 'yaegassy/coc-pylsp', {'do': 'yarn install --frozen-lockfile'}
call plug#end()
let g:cmake_link_compile_commands = 1

colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha


""" require docs
lua <<EOF
require('treesitter')
require('coc')
EOF


" Key bindings:
nnoremap <SPACE> <Nop>
let mapleader=" "

nmap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>tt <cmd>FloatermToggle<cr>
nnoremap <leader>tn <cmd>FloatermNew<cr>
nnoremap <leader>tp <cmd>FloatermPrev<cr>
nnoremap <leader>t[ <cmd>FloatermNext<cr>
nnoremap <leader>cg <cmd>CMakeGenerate<cr>
nnoremap <leader>cb <cmd>CMakeBuild<cr>
