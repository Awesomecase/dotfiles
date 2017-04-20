set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'w0rp/ale'
Plugin 'Townk/vim-autoclose'
Plugin 'fweep/vim-zsh-path-completion'
Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'wellle/tmux-complete.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'justinmk/vim-dirvish'
Plugin 'wellle/targets.vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'ajh17/VimCompletesMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'benmills/vimux'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set undofile " Enable |persistent-undo|, allowing you to undo across sessions.
set dir=~/.vim/swaps//
set backupdir=~/.vim/backups//
set undodir=~/.vim/undo//
set history=10000
set ruler
set showcmd
set incsearch
if &t_Co >2 || has("gui_running")
	syntax on
	set hlsearch
endif

	""""""""""
	" Options
	""""""""""
" Use :help 'option (including the ' character) to learn more about each one.
	"
set complete-=i
" Buffer (File) Options:
set hidden                     " Edit multiple unsaved files at the same time
set confirm                    " Prompt to save unsaved changes when exiting
set viminfo='1000,f1,<500,:100,/100,h
"Search Options:
set hlsearch                   " Highlight searches. See below for more.
set ignorecase                 " Do case insensitive matching...
set smartcase                  " ...except when using capital letters
set incsearch                  " Incremental search
set wrapscan                   " Wrap scan around end-of-file
" Insert (Edit) Options:
set backspace=indent,eol,start " Better handling of backspace key
set autoindent                 " Sane indenting when filetype not recognised
set nostartofline              " Emulate typical editor navigation behaviour
set nopaste                    " start in normal (non-paste) mode
set pastetoggle=<f11>          "Use <f11> to toggle paste mode


" Status / Command Line Options:
set wildmenu                   " Better commandline completion
set wildmode=longest:full,full " Expand match on first Tab complete
set showcmd                    " Show (partial) command in status line.
set laststatus=2               " Always show a status line
set cmdheight=2                " Prevent "Press Enter" messages
                               " Show detailed information in status line
set statusline=%f%m%r%h%w\ [%n:%{&ff}/%Y]%=[0x\%04.4B][%03v][%p%%\ line\ %l\ of\ %L]

" Interface Options
set number relativenumber                    " Display line numbers at left of screen
set visualbell                 " Flash the screen instead of beeping on errors
set mouse=a                    " Enable mouse usage (all modes) in terminals
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Indentation Options:
set tabstop=4                  " NEVER change this!
" Change the '2' value below to your preferred indentation level
set shiftwidth=4               " Number of spaces for
set softtabstop=4              " ...each indent level
set clipboard=unnamed
set expandtab "	Use spaces instead when inserting a <Tab>. 
set autoindent

set exrc "This option forces Vim to source .vimrc file if it present in working directory, thus providing a place to store project-specific configuration.
set secure "This option will restrict usage of some commands in non-default .vimrc files; commands that write to file or execute shell commands are not allowed and map commands are displayed.

"ale
let g:ale_sign_column_always = 1
let g:ale_history_enabled = 1
let g:ale_history_log_output = 1
 let g:ale_linters = {
\ 'c': ['gcc'],
\ 'cpp': ['gcc'],
\ 'python': ['flake8'],
\ 'asm': ['gcc'],} 
let g:ale_c_gcc_options = ''
let g:ale_cpp_gcc_options = '-ggdb -time -Wall -pedantic -Wextra -pedantic-errors -std=c++11 -Wconversion'
let g:ale_python_flake8_args = ''
let g:ale_sh_shellcheck_options = ''
"tmux complete
"let g:tmuxcomplete#trigger = 'completefunc'

"airline 
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'
"let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#ctrlp#show_adjacent_modes = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#ale#enabled = 1
" Tagbar
nmap <F8> :TagbarToggle<CR>
let g:dirvish_mode = ':sort r /[^\/]$/'
"resets last seach pattern by hitting return
nnoremap <CR> :noh<CR><CR>
"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
