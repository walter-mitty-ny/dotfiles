"===============================================================================
" General settings
"===============================================================================
"
"-------------------------------------------------------------------------------
" Use Vim settings, rather than Vi settings.
" This must be first, because it changes other options as a side effect.
"-------------------------------------------------------------------------------
set nocompatible
"
"-------------------------------------------------------------------------------
" Enable file type detection. Use the default settings.
" Also load indent files, to automatically do language-dependent indenting.
"-------------------------------------------------------------------------------
filetype plugin on
filetype indent on
"
"-------------------------------------------------------------------------------
" Switch syntax highlighting on.
"-------------------------------------------------------------------------------
syntax on
"
"-------------------------------------------------------------------------------
" Set the status line
"-------------------------------------------------------------------------------
set statusline=%f\ %y\ format:\ %{&ff};\ C%c\ L%l/%L\ %m
"
"-------------------------------------------------------------------------------
" Various settings
"-------------------------------------------------------------------------------
set autoindent                  " copy indent from current line
set autoread                    " read open files again when changed outside Vim
set autowrite                   " write a modified buffer on each :next, ...
set backspace=indent,eol,start  " backspacing over everything in insert mode
set browsedir=current           " which directory to use for the file browser
set colorcolumn=81              " set 80 characters line width
set complete+=k                 " scan the files given with 'dictionary' option
set encoding=utf-8              " use utf-8 encoding
set guioptions-=T               " don't show the menubar in gvim
set history=50                  " keep 50 lines of command line history
set hlsearch                    " highlight the last used search pattern
set incsearch                   " do incremental searching
set ignorecase                  " be case insensitive
set laststatus=2                " always display the status line
set listchars=tab:>.,eol:\$     " strings to use in 'list' mode
set modeline                    " enable the modeline
set mouse=a                     " enable the use of the mouse
set mousemodel=popup            " right-click to copy/paste/etc
set nobackup                    " do not create backup files
set noeb vb t_vb=               " disable error bell and visual bell
set noswapfile                  " do not create swap files
set popt=left:8pc,right:3pc     " print options
set ruler                       " show the cursor position all the time
set showcmd                     " display incomplete commands
set smartindent                 " smart autoindenting when starting a new line
set tabstop=8                   " number of spaces that a <Tab> counts for
set termguicolors               " enable true color support on the terminal
set wildignore=*.bak,*.o,*.e,*~ " wildmenu: ignore these extensions
set wildmenu                    " command-line completion in an enhanced mode
set wrap                        " wrap lines
"
"===============================================================================
" vim-plug settings
"===============================================================================
call plug#begin('~/.vim/plugged')
"
" easy-align makes column-alignment faster and simpler
Plug 'junegunn/vim-easy-align'
"
" see github activity on a project in vim
Plug 'junegunn/vim-github-dashboard'
"
" add NERDTree and git integration to show flags
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin'
"
" add NERDCommenter
Plug 'scrooloose/nerdcommenter'
"
" indicate changes on the sidebar
Plug 'mhinz/vim-signify'
"
" you complete me
Plug 'Valloric/YouCompleteMe'
"
" fzf
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'
let g:fzf_launcher = 'xterm -bg black -geometry 120x30 -e sh -c %s'
noremap <leader>s :FZF<CR>
"
" git integration
Plug 'tpope/vim-fugitive'
autocmd QuickFixCmdPost *grep* cwindow
noremap <leader>c :Gstatus<CR>
"
" better status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"
" papercolor theme
Plug 'NLKNguyen/papercolor-theme'
"
" copilot
Plug 'github/copilot.vim'
"
" ai
Plug 'madox2/vim-ai'
let g:vim_ai_roles_config_file = '~/.vim/roles.ini'
"
"
" initialize plugin system
call plug#end()
"===============================================================================
" Miscellaneous settings
"===============================================================================
" must be set after plugins and since PaperColor is a plugin...
set background=dark
colorscheme PaperColor
" completion stuff
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
