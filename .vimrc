" set options {{{1
set nocompatible

" fix C-Space mappings in terminal {{{2
map <C-@> <C-Space>

" terminal timeouts, etc. {{{2
set lazyredraw
set notimeout
set ttimeout
set ttimeoutlen=50
set ttyfast

" mouse {{{2
set mouse=a
set mousemodel=popup_setpos
if has('nvim')
	" emulate clipboard=autoselect
	vmap <LeftRelease> "*ygv
	vmap <2-LeftRelease> "*ygv
	vmap <3-LeftRelease> "*ygv
endif

" set terminal title regardless of whether it can be restored
set title

" old-style debian vim addons {{{2
set runtimepath+=/usr/share/vim/addons

" ft, syn, colors {{{1
filetype plugin indent on
syntax on

" detect background colour, load colourscheme {{{2
set bg&
if has('nvim')
	colorscheme vim
endif

" vim:set foldenable foldmethod=marker: {{{1
