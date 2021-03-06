set nocompatible              " be iMproved, required
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/bundle')

Plug 'fweep/vim-zsh-path-completion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-signify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'michaeljsmith/vim-indent-object'
Plug 'wakatime/vim-wakatime'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'
Plug 'justinmk/vim-dirvish'
Plug 'wellle/targets.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'jiangmiao/auto-pairs'
Plug 'tmhedberg/SimpylFold'
Plug 'kopischke/vim-stay'
Plug 'Konfekt/FastFold'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-file.vim'
Plug 'wellle/tmux-complete.vim'
"if executable('cscope') 
"    Plug 'prabirshrestha/asyncomplete-tags.vim'
"    Plug 'ludovicchabant/vim-gutentags'
if executable('ctags')
    Plug 'prabirshrestha/asyncomplete-tags.vim'
    Plug 'ludovicchabant/vim-gutentags'
endif
if has('python3')
        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'
        Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
endif
Plug 'w0rp/ale'



call plug#end()

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
set pastetoggle=<f9>          "Use <f11> to toggle paste mode


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

set clipboard=unnamed
set expandtab "	Use spaces instead when inserting a <Tab>. 
set autoindent
set cursorline          " highlight current line

"Folding
set foldenable          " enable folding
set foldlevel=99
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
set viewoptions=cursor,folds,slash,unix

" Indentation Options:
set tabstop=4                  " NEVER change this!
" Change the '2' value below to your preferred indentation level
set shiftwidth=4               " Number of spaces for
set softtabstop=4              " Makes tabs 4 spaces
set exrc "This option forces Vim to source .vimrc file if it present in working directory, thus providing a place to store project-specific configuration.
set secure "This option will restrict usage of some commands in non-default .vimrc files; commands that write to file or execute shell commands are not allowed and map commands are displayed.
autocmd Filetype gitcommit setlocal spell textwidth=72
set omnifunc=syntaxcomplete#Complete
"ale
let g:ale_sign_column_always = 1
let g:ale_history_enabled = 1
let g:ale_history_log_output = 1
let g:ale_linters = {
\ 'c': ['clang'],
\ 'cpp': ['clang'],
\ 'python': ['pylint', "mypy"],
\ 'asm': ['gcc'],}
 
let g:ale_c_gcc_options = ''
let g:ale_cpp_gcc_options = '-ggdb -time -Wall -pedantic -Wextra -pedantic-errors -std=c++11 -Wconversion'
let g:ale_sh_shellcheck_options = '-s bash'
let g:ale_python_pylint_options = "--load-plugins=pylint.extensions.docparams"
let g:ale_fixers = {
            \ 'python': [
            \ 'yapf']}
nmap <F7> <Plug>(ale_fix)
"airline 
let g:airline_powerline_fonts = 1
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
"ultsnips
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"SimplyFold
let g:SimpylFold_docstring_preview = 1
"fastfold
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes = ['x','X','a','A','o','O','c','C','r','R','m','M','i','n','N']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
"vim-tmux-navigator
let g:tmux_navigator_save_on_switch = 1
"ChangesPlugin
let g:changes_vcs_check=1
let g:changes_fixed_sign_column=1
"async completer
"file
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'whitelist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))
"snippets
if has('python3')
    let g:UltiSnipsExpandTrigger="<c-e>"
    call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'whitelist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))
endif
"tags
"if executable('cscope') 
"    let g:gutetags_modules=['cscope']
"    au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#tags#get_source_options({
"        \ 'name': 'tags',
"        \ 'whitelist': ['*'],
"        \ 'completor': function('asyncomplete#sources#tags#completor'),
"        \ 'config': {
"        \    'max_file_size': 50000000,
"        \  },
"        \ }))
if executable('ctags')
    au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#tags#get_source_options({
        \ 'name': 'tags',
        \ 'whitelist': ['*'],
        \ 'completor': function('asyncomplete#sources#tags#completor'),
        \ 'config': {
        \    'max_file_size': 50000000,
        \  },
        \ }))
endif
"tmux complete
let g:tmuxcomplete#asyncomplete_source_options = {
            \ 'name':      'tmuxcomplete',
            \ 'whitelist': ['*'],
            \ 'config': {
            \     'splitmode':      'words',
            \     'filter_prefix':   1,
            \     'show_incomplete': 1,
            \     'sort_candidates': 0,
            \     'scrollback':      0,
            \     'truncate':        0
            \     }
            \ }
