" =========================
" Basic Vim Settings
" =========================
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set cursorline
set hidden
set mouse=a
set updatetime=300
set shortmess+=c
set signcolumn=yes
let mapleader=" "


" Clipboard (only if supported)
if has("clipboard")
  set clipboard=unnamedplus
endif

" =========================
" Plugin Manager
" =========================
call plug#begin('~/.vim/plugged')

" File tree
Plug 'preservim/nerdtree'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" LSP + Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto-pairs
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
nnoremap <leader>g :Rg<CR>

" =========================
" CoC (LSP + completion)
" =========================

" TAB / Shift-TAB for completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"

inoremap <silent><expr> <S-TAB>
      \ pumvisible() ? "\<C-p>" : "\<S-TAB>"

" Enter confirms completion
inoremap <silent><expr> <CR>
      \ pumvisible() ? coc#_select_confirm() : "\<CR>"

" LSP navigation
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> K :call CocActionAsync('doHover')<CR>

" Diagnostics
nnoremap <silent> [g <Plug>(coc-diagnostic-prev)
nnoremap <silent> ]g <Plug>(coc-diagnostic-next)

" =========================
" Auto-format on save (C++)
" =========================
augroup cpp_format
  autocmd!
  autocmd BufWritePre *.cpp,*.h silent! call CocAction('format')
augroup END

" =========================
" C++ specific
" =========================
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4

