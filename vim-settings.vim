"""""""""""""""""""""""
" Leader for Shortcuts
"""""""""""""""""""""""
" Set mapleader
let mapleader=" "
let g:mapleader=" "

"""""""""""""""""""""
" Interface Settings
"""""""""""""""""""""
" Colorscheme

set background=dark
colorscheme railscasts

" Hide scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

set guifont=Menlo_for_Powerline:h12

" Hide menubar
set guioptions-=m

" Hide toolbar
set guioptions-=T

" Settings for line cursor is on
hi CursorLine cterm=NONE term=NONE

" 256 color terminal
set t_Co=256

" Highlight current line
set cul

""""""""""""""""""""""""""""
" Interface plugin settings
""""""""""""""""""""""""""""

" Airline autopopulate symbols
" if has("gui_running")
  let g:airline_powerline_fonts=1
" end

" Airline smarter tabline
let g:airline#extensions#tabline#enabled=1

" Airline only show filename in tabline
let g:airline#extensions#tabline#fnamemod=":t"

" Tagbar keyboard shortcut
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""
" Plugin Options
"""""""""""""""""

" NERDTree open on GUI startup
let g:nerdtree_tabs_open_on_gui_startup=0

" NERDTree toggle
noremap <a-tab> :NERDTreeToggle<cr>
noremap <F2> :NERDTreeToggle<cr>

" NERDTree close on open file
let NERDTreeQuitOnOpen=1

" RSpec turn off default mappings
let g:RspecKeymap=0

" CmdAlias aliases (helps slips like :W to :w)
au VimEnter * Alias W w
au VimEnter * Alias WQ wq
au VimEnter * Alias Wq wq
au VimEnter * Alias Q q
au VimEnter * Alias X x

" Safariext
" nnoremap <leader>eo :SafariextOpen<cr>
" nnoremap <leader>ei :SafariextInstall<cr>
" nnoremap <leader>eu :SafariextUninstall<cr>
" nnoremap <leader>er :SafariextReload<cr>
" nnoremap <leader>eg :SafariextInspectGlobal<cr>
" nnoremap <leader>eb :SafariextBuild<cr>

""""""""""""""""""""
" Filetype Settings
""""""""""""""""""""
" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"""""""""""""""""""
" General Settings
"""""""""""""""""""
" Enable Vim
set nocompatible

" Variables can be set per file
set modeline

" Show line numbers
set number

" Highlights matching braces
set showmatch

" Search starts while entering string
set incsearch

" Search highlighting
set hlsearch

" Search ignore case
set ignorecase

" Search ignore case unless search contains an uppercase
set smartcase

" Autoloads changes to file made outside Vim
set autoread

" Do not wrap lines
set nowrap

" Prevent automatically inserting line breaks
set textwidth=0

" Command line completion help
set wildmenu

" Extensions to ignore in searches
set wildignore+=*.o,*.~,*.pyc,*.exe,*/tmp/*,*.so,*.swp,*.zip,*\\tmp\\*

" Turn off folding by default
set nofoldenable

" Fold by syntax highlighting
set foldmethod=syntax

" Minimum number of screen rows above and below the cursor
set scrolloff=2

" Minimum number of screen columns to the left and right of the cursor
set sidescrolloff=0

" Always show the status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Allow use of system clipboard
set clipboard=unnamed

" Buffer screen updates to speed up macros etc.
set lazyredraw

" New window appears below current
set splitbelow

" New window appears to the right of current
set splitright

" Set charater representation via UTF-8
set encoding=utf8

" File type preferences
set fileformats=unix,dos

" Don't create backups
set nobackup
set nowb

" Turn off swapfiles
set noswapfile

" Buffer becomes hidden when abandoned to prevent need to save
set hidden

" Enable syntax highlighting
syntax on

" Enable filetype plugins
filetype plugin on

" Enable filetype indenting
filetype indent on

" Set autocomplete to syntax completion
set omnifunc=syntaxcomplete#Complete

""""""""""""""""""
" Indent Settings
""""""""""""""""""
" Automatically indent properly
set autoindent

" Represent 1 tab as 2 columns
set tabstop=2

" Text is indented by 2 columns
set shiftwidth=2

" Insert 2 columns when tab pressed
set softtabstop=2

" Backspace behave normally
set backspace=2
" or not
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" expand tabs to spaces
set expandtab

" Show the ruler - may not have an effect if airline/powerline is active
set ruler

" Be smart when using tabs
set smarttab

" Disable any bells
set noerrorbells
set novisualbell
set vb t_vb=

" Autoindent
set autoindent

" release alt-key
set si
set copyindent
set mat=2

" searches wrap around the end of the file
set wrapscan

" Delete through linebreaks
set sol

" allow selection with mouse in visual mode
set selectmode=mouse

" If in Insert, Replace or Visual mode put a message on the last line
set showmode

" Show (partial) command in the last line of the screen
set showcmd

" Set the title of the window to `titlestring`
set title

" Tab titles
set guioptions+=e
set guitablabel=%M\ %t


let g:bufferline_echo = 0
let g:indent_guides_auto_colors = 1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer/Tab Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Go to next buffer
nnoremap gb :bnext<cr>

" Go to previous buffer
nnoremap gB :bprevious<cr>

" New buffer in current area
nnoremap <leader>ee :enew<cr>

" New buffer in split
nnoremap <leader>es :new<cr>

" New buffer in vertical split
nnoremap <leader>ev :vnew<cr>

" Remove the current buffer
nnoremap <leader>bd :bprevious<cr>:bdelete #<cr>

" Remove the current buffer with override
nnoremap <leader>bD :bprevious<cr>:bdelete! #<cr>

" Split current file
nnoremap <leader>bs :split<cr>

" Vertical split current file
nnoremap <leader>bv :vsplit<cr>

" Show buffer list
nnoremap <leader>bl :ls<cr>

" Create new tab
nnoremap <c-t> :tabnew<cr>

" Go to next tab
nnoremap <a-]> :tabn<cr>

" Go to previous tab
nnoremap <a-[> :tabp<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" View Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Go to split below
nnoremap <c-j> <c-w>j

" Go to split above
nnoremap <c-k> <c-w>k

" Go to split left
nnoremap <c-h> <c-w>h

" Go to split right
nnoremap <c-l> <c-w>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make H and L go to beginning and end of line
noremap H ^
noremap L $
vnoremap L g_

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn off search highlight
nnoremap ? :noh<cr>

" Toggle spell check
nnoremap <leader>sc :setlocal spell!<cr>

" Remove trailing whitespace
nnoremap <leader>xt :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:noh<cr>:echo "Trailing whitespace removed"<cr>

" Sort lines alphabetically
nnoremap <leader>sl :sort i<cr>
vnoremap <leader>sl :sort i<cr>

" Sort lines numerically
nnoremap <leader>sn :sort n<cr>
vnoremap <leader>sn :sort n<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent Switch
"
" Helps switch between space and tab indentation
"
" <leader>it        - toggle indentation method
" <leader>i<tab>    - switch to tab indentation
" <leader>i<space>  - switch to space indentation
" <leader>is        - show current indentation method
" <leader>ir        - reindent the file using current indentation method
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists("g:indentswitch_indent")
  let g:indentswitch_indent = "spaces"
endif

function! s:Ispaces()
  let g:indentswitch_indent = "spaces"
  set expandtab
  set smarttab
  echo "Space Indentation"
endfunction

function! s:Itabs()
  let g:indentswitch_indent = "tabs"
  set noexpandtab
  set nosmarttab
  echo "Tab Indentation"
endfunction

function! s:Itoggle()
  if g:indentswitch_indent == "tabs"
    call s:Ispaces()
  else
    call s:Itabs()
  endif
endfunction

function! s:Ishow()
  if g:indentswitch_indent == "tabs"
    echo "Tab Indentation"
  else
    echo "Space Indentation"
  endif
endfunction

if g:indentswitch_indent == "tabs"
  set noexpandtab
  set nosmarttab
else
  set expandtab
  set smarttab
endif

command! -bar -nargs=0 Itoggle call s:Itoggle()
command! -bar -nargs=0 Itabs call s:Itabs()
command! -bar -nargs=0 Ispaces call s:Ispaces()
command! -bar -nargs=0 Ishow call s:Ishow()

nnoremap <leader>it :Itoggle<cr>
nnoremap <leader>i<tab> :Itabs<cr>
nnoremap <leader>i<space> :Ispaces<cr>
nnoremap <leader>is :Ishow<cr>
nnoremap <leader>ir gg=G


