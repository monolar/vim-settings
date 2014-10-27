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
