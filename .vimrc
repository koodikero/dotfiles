source $VIMRUNTIME/defaults.vim

"merkkaus (voi olla tarve lis�paketeille)
syntax on
colorscheme desert

"sisennykset ja sarakaimen leveydet:
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent

"suhteelinen rivinumerointi
set nu rnu

"merkist� utf-8:ksi
set encoding=utf-8
set fileencoding=utf-8

"hakusanan v�rj�ys
set incsearch

"statusrivi n�kyviin kokoajan
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

"varoitus��net ja ikkunan vilkkumiset pois:
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"---------------------------------------------------------------------
"Pluginnit
"---------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
"resursien hallinan n�ytt�minen
Plug 'preservim/nerdtree'
"fontin koon muuttaminen gVimiss� ja wim10:ss� lis�ksi tarvitaan fontin vaihto
Plug 'drmikehenry/vim-fontsize'
"Lightline komentoriville
Plug 'itchyny/lightline.vim'

"MarkDown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()
"---------------------------------------------------------------------
"fontin kokoon win10:ss�
  if has('win32') || has('win64')
    set guifont=Consolas:h12:cANSI:qDRAFT
  else
    set guifont=Consolas\ 12
  endif

