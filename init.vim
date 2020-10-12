" junegunn/vim-plug
call plug#begin('~/.local/nvim/site/autoload')
	Plug 'vim-airline/vim-airline'
	Plug 'morhetz/gruvbox'
	Plug 'easymotion/vim-easymotion'
call plug#end()

" mapping
map <Leader> <Plug>(easymotion-prefix)

" nvim
set number
set splitbelow
set tabstop=4
set softtabstop=4
set shiftwidth=4
set incsearch
set mouse=a
set hlsearch
set autoindent

" theme
colorscheme gruvbox
set background=dark
