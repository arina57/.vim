set mouse=a
let mapleader=","
set encoding=UTF-8
set number
set clipboard=unnamed

call plug#begin()

	"A collection of language packs for Vim.
	Plug 'sheerun/vim-polyglot'

	"Asynchronous Lint Engine
	Plug 'dense-analysis/ale' 

	" theme
"	Plug 'liuchengxu/space-vim-theme'

	"" Auto complete
"	Plug 'neoclide/coc.nvim', {'branch': 'release'} 

	"tree display
	Plug 'preservim/nerdtree'

	" commenter
	Plug 'preservim/nerdcommenter'

	"Xml tag helper
	Plug 'sukima/xmledit'
	
"	Plug 'vim-airline/vim-airline'
"	Plug 'vim-airline/vim-airline-themes'

	Plug 'tpope/vim-fugitive'

	Plug 'airblade/vim-gitgutter'

"	Plug 'bling/vim-airline'

	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	Plug 'ryanoasis/vim-devicons'
"	Plug 'puremourning/vimspector'

	Plug 'prabirshrestha/vim-lsp'
	Plug 'mattn/vim-lsp-settings'

	Plug 'universal-ctags/ctags'
	Plug 'ludovicchabant/vim-gutentags'

	Plug 'OmniSharp/omnisharp-vim'


	Plug 'liuchengxu/vim-clap'

"	Plug 'brookhong/cscope.vim'
call plug#end()

set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()

syntax enable
set background=dark
colorscheme solarized

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
nnoremap <silent> <leader>c} c}:call NERDComment('x', 'toggle')<CR>

"let g:ale_sign_priority=30 
"let g:gitgutter_sign_priority=10

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

autocmd BufEnter NERD_tree_* | execute 'normal R'
let NERDTreeShowHidden=1

"Vimspector
let g:vimspector_enable_mappings = 'HUMAN'

let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

"Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

"Set the cursor
let &t_SI = "\033[5 q"
let &t_SR = "\033[2 q"
let &t_EI = "\033[2 q"

