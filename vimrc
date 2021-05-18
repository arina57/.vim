set mouse=a
let mapleader=","

call plug#begin()

	"A collection of language packs for Vim.
	Plug 'sheerun/vim-polyglot'

	"Asynchronous Lint Engine
	Plug 'dense-analysis/ale' 

	" theme
	Plug 'liuchengxu/space-vim-theme'

	" Auto complete
	Plug 'neoclide/coc.nvim', {'branch': 'release'} 

	"tree display
	Plug 'preservim/nerdtree'

	" commenter
	Plug 'preservim/nerdcommenter'

	"Xml tag helper
	Plug 'sukima/xmledit'
	
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	Plug 'tpope/vim-fugitive'

	Plug 'airblade/vim-gitgutter'


	Plug 'bling/vim-airline'

call plug#end()
colorscheme space_vim_theme
hi Comment guifg=#5C6370
set termguicolors

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
nnoremap <silent> <leader>c} c}:call NERDComment('x', 'toggle')<CR>

set splitbelow
filetype plugin on

"use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

"This expression seems to be responsible for coc formatting on enter
inoremap <silent><expr> <cr> "\C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"I this just says autocomplete with the first option if pop up menu is open.
"If it is not open, just do a regular tab.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "<cr>"

"airline tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set t_Co=256
":AirlineTheme dark

set ttimeoutlen=50
let g:airline_theme = 'solarized'
let g:airline_solarized_bg='dark'
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
