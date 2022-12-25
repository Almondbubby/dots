set number
set relativenumber
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent

call plug#begin()
	Plug 'sheerun/vim-polyglot'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

if(has("termguicolors"))
	set termguicolors
endif
syntax enable
colorscheme gruvbox-baby

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"

hi Normal guibg=NONE ctermbg=NONE

autocmd filetype python nnoremap <F4> :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
