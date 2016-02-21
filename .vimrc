""""""""" General Vim settings """""""""""""""""
set nocompatible "be iMproved, required
filetype off  " required
set nocp
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"  
"  let Vundle manage Vundle, required
   Plugin 'gmarik/Vundle.vim'
"   
   Plugin 'scrooloose/nerdtree' 
   Plugin 'weynhamz/vim-plugin-minibufexpl' 
   Plugin 'lukaszkorecki/vim-sparkup' 
   Plugin 'tpope/vim-surround'
   Plugin 'tpope/vim-rails'
   Plugin 'tpope/vim-unimpaired'
   Bundle 'vim-ruby/vim-ruby'
   Plugin 'mattn/emmet-vim'
   Plugin 'kien/ctrlp.vim'
   Plugin 'MarcWeber/vim-addon-mw-utils'
   Plugin 'garbas/vim-snipmate'
   Plugin 'scrooloose/snipmate-snippets'
   Plugin 'bling/vim-airline'
   Plugin 'ekalinin/Dockerfile.vim'
   Plugin 'chase/vim-ansible-yaml'
   Plugin 'altercation/vim-colors-solarized'
   Plugin 'godlygeek/tabular'
   Plugin 'tpope/vim-dispatch'
"   
"   " The following are examples of different formats supported.
"   " Keep Plugin commands between vundle#begin/end.
"    
"    " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set fileformats=unix,dos
set ruler
set laststatus=2

" Auto read when a file is changed from the outside.
set autoread

" Tab key produces 2 spaces, and tab characters are converted to spaces.
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

" When you start searching text with /, search is performed at every
" new character insertion.
set incsearch
set hlsearch

" Turn on filetype detection and load the plugin files for
" specific file types.
filetype plugin on

" Pathogen to install plugins as git submodules.
" call pathogen#infect()

" Styles.
" color jellybeans
syntax enable
set background=light
colorscheme solarized
set nu

" Overwriting search highlight colour as this foregrund is more visual.
highlight Search ctermbg=Yellow ctermfg=Black

" Show trailing whitespaces and tabs.
" highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * call clearmatches()
autocmd BufWinLeave * call clearmatches()
autocmd InsertLeave * call clearmatches()

" Loading user settings and overwrites.
if filereadable(expand("~/.vim/custom.vim"))
    source ~/.vim/custom.vim
endif

" Different mode has different cursor for tmus running iTmer2 on OSX
"let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"


" I do not like to see swp
set noswapfile

set ttimeoutlen=50

"OpenIDE modifaction
"map <C-S-t> :nbkey gototype<cr>
"imap <C-S-t> <Esc>:nbkey gototype<cr>
"map <C-S-j> :nbkey autotest.net setfocus<cr>
"imap <C-S-j> <Esc>:nbkey autotest.net setfocus<cr>
"map <C-S-e> :nbkey explore<cr>
"imap <C-S-e> <Esc>:nbkey explore<cr>
"imap <C-S-p> <Esc>:nbkey snippet-complete<cr>
"map <C-S-p> :nbkey snippet-complete<cr>

"Nerd tree
"map <C-n> :NERDTreeToggle<CR>
map - <C-w>- 
map + <C-w>+ 
nnoremap <C-_> <C-w>_
nnoremap <C-=> <C-w>o
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"default yank will go to clipboard
set clipboard=unnamed

"display white spaces
scriptencoding utf-8
set encoding=utf-8
"set list 
set listchars=trail:·,tab:→→,extends:»,eol:¤,precedes:« 

