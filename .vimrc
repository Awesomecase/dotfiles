set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'fweep/vim-zsh-path-completion'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Bundle 'wellle/tmux-complete.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Rip-Rip/clang_complete'
" All of your Plugins must be added before the following line
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
set number                     " Display line numbers at left of screen
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
set shiftround

set exrc "This option forces Vim to source .vimrc file if it present in working directory, thus providing a place to store project-specific configuration.
set secure "This option will restrict usage of some commands in non-default .vimrc files; commands that write to file or execute shell commands are not allowed and map commands are displayed.


"Syntastic junk

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ycm_show_diagnostics_ui = 0
let g:syntastic_enable_signs = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_cpp_gcc_args = "-Wall -time  -Wextra -pedantic-errors -std=c++11 -Wconversion"

"tmux complete
let g:tmuxcomplete#trigger = 'omnifunc'
