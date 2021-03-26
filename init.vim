" junegunn/vim-plug
call plug#begin('~/.local/nvim/site/autoload')
	Plug 'vim-airline/vim-airline'
	Plug 'morhetz/gruvbox'
	Plug 'easymotion/vim-easymotion'
	Plug 'scrooloose/nerdtree'
call plug#end()

" save mapping
map <C-s> :w<CR>

" mapping
" map <Leader> <Plug>(easymotion-prefix)

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
"
" s{char}{char} to move to {char}{char}
nmap [ <Plug>(easymotion-overwin-f2)
"
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

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
