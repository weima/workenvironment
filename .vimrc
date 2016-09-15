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
   Plugin 'rking/ag.vim'
"   
"   " The following are examples of different formats supported.
"   " Keep Plugin commands between vundle#begin/end.
"    
"    " All of your Plugins must be added before the following line
"


call vundle#end()            " required
filetype plugin indent on    " required

call plug#begin('~/.vim/plugged')
"    Plug 'vimlab/neojs'
    Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
    Plug 'junegunn/fzf', {'dir':'~/.fzf', 'do': './install --all'}
call plug#end()

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
nnoremap <Space>t :NERDTreeToggle<CR>

"I want to search current and subfolders
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'find %s -type f \( ! -iname "*~" \) '

nnoremap <Space>p :CtrlP .<CR>


map - <C-w>- 
map + <C-w>+ 

"default yank will go to clipboard
set clipboard=unnamed

"display white spaces
scriptencoding utf-8
"set encoding=utf-8
"set list 
"set listchars=trail:·,tab:→→,extends:»,eol:¤,precedes:« 

" ---------------
" UI
" ---------------
set ruler          " Ruler on
"set number         " Line numbers on
set nowrap         " Line wrapping off
set laststatus=2   " Always show the statusline
set cmdheight=2    " Make the command area two lines high
"set cursorline     " Highlight current line
"set encoding=utf-8
set noshowmode     " Don't show the mode since Powerline shows it
set title          " Set the title of the window in the terminal to the file
" if exists('+colorcolumn')
"   set colorcolumn=80 " Color the 80th column differently as a wrapping guide.
" endif
" Disable tooltips for hovering keywords in Vim
if exists('+ballooneval')
  " This doesn't seem to stop tooltips for Ruby files
  set noballooneval
  " 100 second delay seems to be the only way to disable the tooltips
  set balloondelay=100000
endif

" ---------------
" Behaviors
" ---------------
syntax enable
set backup             " Turn on backups
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
" longest common part, then all.
set wildmode=longest,full
set hidden             " Change buffer - without saving
set history=768        " Number of things to remember in history.
set confirm            " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set timeoutlen=400     " Time to wait for a command (after leader for example).
set ttimeout
set ttimeoutlen=100    " Time to wait for a key sequence.
set nofoldenable       " Disable folding entirely.
set foldlevelstart=99  " I really don't like folds.
set formatoptions=crql
set iskeyword+=\$,-   " Add extra characters that are valid parts of variables
set nostartofline      " Don't go to the start of the line after some commands
set scrolloff=3        " Keep three lines below the last line when scrolling
set gdefault           " this makes search/replace global by default
set switchbuf=useopen  " Switch to an existing buffer if one exists

" ---------------
" Text Format
" ---------------
set tabstop=2
set backspace=indent,eol,start " Delete everything with backspace
set shiftwidth=4 " Tabs under smart indent
set shiftround
set cindent
set autoindent
set smarttab
set expandtab

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch  " Incremental search
set hlsearch   " Highlight search results
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
  \rake-pipeline-*

" ---------------
" Visual
" ---------------
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
" Show invisible characters
set list

" Show trailing spaces as dots and carrots for extended lines.
" From Janus, http://git.io/PLbAlw

" Reset the listchars
set listchars=""
" make tabs visible
"set listchars=tab:▸▸
" show trailing spaces as dots
"set listchars+=trail:•
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
"set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
"set listchars+=precedes:<

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U

" ----------------------------------------
" Commands
" ----------------------------------------

" Silently execute an external command
" No 'Press Any Key to Contiue BS'
" from: http://vim.wikia.com/wiki/Avoiding_the_%22Hit_ENTER_to_continue%22_prompts
command! -nargs=1 SilentCmd
\ | execute ':silent !'.<q-args>
\ | execute ':redraw!'

" Fixes common typos
command! W w
command! Q q


" ----------------------------------------
" Mappings
" ----------------------------------------

" Set leader to ,
" Note: This line MUST come before any <leader> mappings
let mapleader=','
let maplocalleader = ' '

"We would like to use space to replace control-w
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k

nnoremap <leader>n :vsp term://zsh<Cr>

tnoremap <leader>h <C-\><C-n><C-w>h
tnoremap <leader>l <C-\><C-n><C-w>l
tnoremap <leader>j <C-\><C-n><C-w>j
tnoremap <leader>k <C-\><C-n><C-w>k



" ---------------
" Regular Mappings
" ---------------

" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :

" I want to be able to inert simicolon to end of statement
inoremap ;; <Esc>A;<Esc>
nnoremap ;; A;<Esc>

" Yank entire buffer with gy
nnoremap gy :0,$ y<cr>

" Select entire buffer
nnoremap vy ggVG

" Make Y behave like other capital commands.
" Hat-tip http://vimbits.com/bits/11
nnoremap Y y$

" Just to beginning and end of lines easier. From http://vimbits.com/bits/16
noremap H ^
noremap L $

" Create newlines without entering insert mode
nnoremap go o<Esc>k
nnoremap gO O<Esc>j

" Break the current line entering insert mode
nnoremap ee i<cr><Esc>
nnoremap <Space><Space> i<Space><Esc>



" remap U to <C-r> for easier redo
" from http://vimbits.com/bits/356
nnoremap U <C-r>

" Swap implementations of ` and ' jump to markers
" By default, ' jumps to the marked line, ` jumps to the marked line and
" column, so swap them
nnoremap ' `
nnoremap ` '

" Don't move on *
nnoremap <silent> * :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>

" ---------------
" Window Movement
" ---------------
nnoremap <silent> gh :WriteBufferIfNecessary<CR>:wincmd h<CR>
nnoremap <silent> gj :WriteBufferIfNecessary<CR>:wincmd j<CR>
nnoremap <silent> gk :WriteBufferIfNecessary<CR>:wincmd k<CR>
nnoremap <silent> gl :WriteBufferIfNecessary<CR>:wincmd l<CR>

nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

"   4 Window Splits
"
"   -----------------
"   g1 | g2 | g3 | g4
"   -----------------
nnoremap <silent> g1 :WriteBufferIfNecessary<CR>:wincmd t<CR>
nnoremap <silent> g2 :WriteBufferIfNecessary<CR>:wincmd t<bar>:wincmd l<CR>
nnoremap <silent> g3 :WriteBufferIfNecessary<CR>:wincmd t<bar>:wincmd l<bar>
      \:wincmd l<CR>
nnoremap <silent> g4 :WriteBufferIfNecessary<CR>:wincmd b<CR>

" Equal Size Windows
nnoremap <silent> g= :wincmd =<CR>
" Swap Windows
nnoremap <silent> gx :wincmd x<CR>

" ---------------
" Modifer Mappings
" ---------------

" Make line completion easier.
inoremap <C-l> <C-x><C-l>

" Scroll larger amounts with C-j / C-k
nnoremap gj 15gjzz
nnoremap gk 15gkzz
vnoremap gj 15gjzz
vnoremap gk 15gkzz

"new line without leaving normal mode
nnoremap nb i<CR><Esc>
nnoremap bn i<CR><Esc>

" ---------------
" Insert Mode Mappings
" ---------------

" Let's make escape better, together.
inoremap jk <Esc>
vnoremap jk <Esc>
inoremap JK <Esc>
vnoremap JK <Esc>
inoremap Jk <Esc>
vnoremap Jk <Esc>
inoremap jK <Esc>
vnoremap jK <Esc>


" ---------------
" Leader Mappings
" ---------------

" Clear search
noremap <silent><leader>/ :nohls<CR>

" Highlight search word under cursor without jumping to next
"nnoremap <leader>h *<C-O>

" Toggle spelling mode
"nnoremap <silent> <leader>sp :set spell!<CR>

" Quickly switch to last buffer
nnoremap <leader>, :e#<CR>

" Underline the current line with '-'
"nnoremap <silent> <leader>ul :t.\|s/./-/\|:nohls<cr>

" Underline the current line with '='
"nnoremap <silent> <leader>uul :t.\|s/./=/\|:nohls<cr>

" Surround the commented line with lines.
"
" Example:
"          # Test 123
"          becomes
"          # --------
"          # Test 123
"          # --------
"nnoremap <silent> <leader>cul :normal "lyy"lpwvLr-^"lyyk"lP<cr>

" Format the entire file
nnoremap <leader>fef mx=ggG='x

" Format a json file with Underscore CLI
" Inspirited by https://github.com/spf13/spf13-vim/blob/3.0/.vimrc#L390
"nnoremap <leader>fj <Esc>:%!underscore print<CR><Esc>:set filetype=json<CR>

" Split window vertically or horizontally *and* switch to the new split!
"nnoremap <silent> <leader>hs :split<Bar>:wincmd j<CR>:wincmd =<CR>
"nnoremap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>:wincmd =<CR>

" Close the current window
nnoremap <silent> <m-w> :close<CR>

" ---------------
" Typo Fixes
" ---------------

noremap <F1> <Esc>
inoremap <F1> <Esc>
cnoremap w' w<CR>

" Disable the ever-annoying Ex mode shortcut key. Type visual my ass. Instead,
" make Q repeat the last macro instead. *hat tip* http://vimbits.com/bits/263
nnoremap Q @@

" Removes doc lookup mapping because it's easy to fat finger and never useful.
nnoremap K k
vnoremap K k

" Toggle paste mode with F5
nnoremap <silent> <F5> :set paste!<CR>

" Paste and select pasted
nnoremap <expr> gpp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Insert date
iabbrev ddate <C-R>=strftime("%Y-%m-%d")<CR>

" copy current file name (relative/absolute) to system clipboard
" from http://stackoverflow.com/a/17096082/22423
if has('mac') || has('gui_macvim') || has('gui_mac')
  " relative path  (src/foo.txt)
  nnoremap <silent> <leader>yp :let @*=expand("%")<CR>

  " absolute path  (/something/src/foo.txt)
  nnoremap <silent> <leader>yP :let @*=expand("%:p")<CR>

  " filename       (foo.txt)
  nnoremap <silent> <leader>yf :let @*=expand("%:t")<CR>

  " directory name (/something/src)
  nnoremap <silent> <leader>yd :let @*=expand("%:p:h")<CR>
endif


