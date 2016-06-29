
"use Vim mode instead of pure Vi
set nocompatible

"----------------------------------------------------------"
"- Display Settings-"
"----------------------------------------------------------"
set number              " display line number
set encoding=utf-8      " set character encoding to utf-8
set ruler               " show the cursor position all the time 
set t_Co=256            " set 256 color mode
set showmatch           " show matching brackets when text indicator is over them
set cursorline          " highlight the cursor line
set statusline=1        " show status line, even if there's only one window 
set showcmd             " In the status bar show incomplete commands as they are typed 


"----------------------------------------------------------"
"- Edit Settings -"
"----------------------------------------------------------"
set backspace=indent,eol,start   " backspace over everything in insert mode
set textwidth=90                 " wrap lines automatically at 90th column
set tabstop=2                    " number of visual spaces per tab
set shiftwidth=2                 " autoindent indents 2 spaces 
set smarttab                     " <TAB> in front of line inserts 'shiftwidth' spaces 


"----------------------------------------------------------"
"- Write Settings -"
"----------------------------------------------------------"
set confirm              " confirm :q in case of unsaved files
set fileencoding=utf-8   " encoding used when saving files
set nobackup             " do not keep backup~ file


"----------------------------------------------------------"
"- Search Settings -"
"----------------------------------------------------------"
set smartcase            " when searching try to be smart about cases
set hlsearch             " highlight search results
set incsearch            " do incremental search


" Load pathogen plugins
execute pathogen#infect()
syntax on
filetype plugin indent on


"----------------------------------------------------------"
"- gVim settings -"
"----------------------------------------------------------"
if has('gui_running')
	syntax enable
	set background=dark
  colorscheme molokai  
  let g:molokai_original = 1
  let g:rehash256 = 1

  set guifont=Hack:h14
 	set linespace=8	

	let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts = 1
  
  set guioptions-=m             " remove menu bar
  set guioptions-=T             " remove toolbar
  set guioptions-=r             " remove right-hand scroll bar 
  set guioptions-=L             " remove left-hand scroll bar
endif


"----------------------------------------------------------"
"- Syntactic Linter Settings -"
"----------------------------------------------------------"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = []


"----------------------------------------------------------"
"- Ctrl P Settings -"
"----------------------------------------------------------"

"----------------------------------------------------------"
"- Key Maps -"
"----------------------------------------------------------"
:nnoremap vimrc :vs $MYVIMRC<cr>       " edit .vimrc file
