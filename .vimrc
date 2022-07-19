set nocompatible              " be iMproved, required
filetype off                  " required
let g:snipMate = { 'snippet_version' : 0}

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'		" let Vundle manage Vundle, required

"---------=== Code/project navigation ===-------------
Plugin 'scrooloose/nerdtree' 	    	" Project and file navigation
Plugin 'majutsushi/tagbar'          	" Class/module browser

"------------------=== Other ===----------------------
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fisadev/FixedTaskList.vim'  	" Pending tasks list
Plugin 'rosenfeld/conque-term'      	" Consoles as buffers
Plugin 'tpope/vim-surround'	   	" Parentheses, brackets, quotes, XML tags, and more

"--------------=== Snippets support ===---------------
Plugin 'garbas/vim-snipmate'		" Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'	" dependencies #1
Plugin 'tomtom/tlib_vim'		" dependencies #2
Plugin 'honza/vim-snippets'		" snippets repo

"---------------=== Languages support ===-------------
" --- Python ---
Plugin 'klen/python-mode'	        " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim' 		" Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'		" Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

Plugin 'frazrepo/vim-rainbow'
Plugin 'itchyny/lightline'
Plugin 'jiangmiao/auto-pairs'


call vundle#end()            		" required
filetype on
filetype plugin on
filetype plugin indent on

set backspace=indent,eol,start
aunmenu Help.
aunmenu Window.
let no_buffers_menu=1
set mousemodel=popup

set ruler
set completeopt-=preview
set gcr=a:blinkon0
if has("gui_running")
      set cursorline
endif
set ttyfast

syntax on
if has("gui_running")
    set lines=50 columns=125
    colorscheme molokai
endif

tab sball
set switchbuf=useopen

" отключаем пищалку и мигание
set visualbell t_vb= 
set novisualbell       
"
set enc=utf-8      " utf-8 по дефолту в файлах
set ls=2             " всегда показываем статусбар
set incsearch      " инкреминтируемый поиск
set hlsearch       " подсветка результатов поиска
set nu                 " показывать номера строк
set scrolloff=5        " 5 строк при скролле за раз
"
" " отключаем бэкапы и своп-файлы
set nobackup       " no backup files
set nowritebackup    " only in case you don't want a backup file while
set noswapfile         " no swap files
" " прячем панельки
set guioptions-=m   " меню
set guioptions-=T    " тулбар
set guioptions-=r   "  скроллбары
"
" " настройка на Tab
set smarttab
set tabstop=8
"
" "  при переходе за границу в 80 символов в Ruby/Python/js/C/C++ подсвечиваем
" на темном фоне текст
augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType ruby,python,javascript,c,cpp match Excess /\%80v.*/
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
augroup END
"
"                 " указываем каталог с настройками SnipMate
let g:snippets_dir = "~/.vim/vim-snippets/snippets"
"
"                 " настройки Vim-Airline
set laststatus=2
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
"
"                 " TagBar настройки
map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 0 " автофокус на Tagbar при
"                 открытии
"
"                 " NerdTree настройки
"                 " показать NERDTree на F3
map <F3> :NERDTreeToggle<CR>
"                 "игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  
"
"                 " TaskList настройки
map <F2> :TaskList<CR>       " отобразить список тасков на F2
"
"                 " Работа буфферами
map <C-q> :bd<CR>        " CTRL+Q - закрыть текущий буффер
