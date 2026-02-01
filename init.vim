" =========================
" Basic Neovim Settings
" =========================
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set cursorline
set termguicolors
set hidden
set mouse=a
set clipboard=unnamedplus 
let mapleader=" "

" =========================
" Plugin Manager
" =========================
call plug#begin('~/.local/share/nvim/plugged')

" File tree
Plug 'preservim/nerdtree'

" File finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Language Server / Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Raimondi/delimitMate'
call plug#end()

" =========================
" NERDTree
" =========================
nnoremap <leader>e :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" =========================
" FZF
" =========================
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>

" =========================
" CoC (LSP + completion)
" =========================
set updatetime=300
set shortmess+=c

" TAB: next completion item
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"

" Shift-TAB: previous completion item
inoremap <silent><expr> <S-TAB>
      \ pumvisible() ? "\<C-p>" : "\<S-TAB>"

" Enter: confirm completion
inoremap <silent><expr> <CR>
      \ pumvisible() ? coc#_select_confirm() : "\<CR>"

nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call CocActionAsync('doHover')<CR>

" Auto-format on save (C++)
autocmd BufWritePre *.cpp,*.h :silent! call CocAction('format')

" =========================
" C++ specific
" =========================
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4

