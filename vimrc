set number
set nocompatible

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/space-vim-dark'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme space-vim-dark
hi Comment cterm=italic
" hi Normal     ctermbg=NONE guibg=NONE
" hi LineNr     ctermbg=NONE guibg=NONE
" hi SignColumn ctermbg=NONE guibg=NONE

hi Comment guifg=#5C6370 ctermfg=43
set termguicolors
hi LineNr ctermbg=NONE guibg=NONE
