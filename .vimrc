call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
" Plug 'jiangmiao/auto-pairs'
" Plug 'ycm-core/YouCompleteMe'
Plug 'easymotion/vim-easymotion'
" Plug 'kien/ctrlp.vim'
" Plug 'petRUShka/vim-sage'
" html
" Plug 'mattn/emmet-vim'
" colorschemes
Plug 'morhetz/gruvbox'

" Python
"Plug 'klen/python-mode'	        " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
"Plug 'davidhalter/jedi-vim' 		" Jedi-vim autocomplete plugin
"Plug 'mitsuhiko/vim-jinja'		" Jinja support for vim
"Plug 'mitsuhiko/vim-python-combined'
call plug#end()

" YouCompleteMe
" let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/default_extra/.ycm_extra_conf.py'

" mapping
let mapleader=" "
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

" theme
colorscheme gruvbox
set background=dark

" vim
set number
set splitbelow
set tabstop=4
set softtabstop=4
set shiftwidth=4
set incsearch
set mouse=a
set hlsearch
set autoindent

" NERDTree
" open automatically
" autocmd vimenter * NERDTree
" open in current directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" autoclose
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" motion between windows

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
	let t:curwin = winnr()
	exec "wincmd ".a:key
	if (t:curwin == winnr())
		if (match(a:key, '[jk]'))
			wincmd v
		else
			wincmd s
		endif
		exec "wincmd ".a:key
	endif
endfunction
