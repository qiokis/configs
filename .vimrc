set nocompatible
let g:snipMate = { 'snippet_version' : 0}

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'		
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline' 	      
Plugin 'tpope/vim-surround'	   	   
Plugin 'davidhalter/jedi-vim' 
Plugin 'frazrepo/vim-rainbow'
Plugin 'jiangmiao/auto-pairs'

call vundle#end() 

filetype on
filetype plugin on
filetype plugin indent on

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set backspace=indent,eol,start
let no_buffers_menu=1
set ruler
set gcr=a:blinkon0
set ttyfast
syntax on
set background=dark

set enc=utf-8
set nu
set nobackup       
set nowritebackup  
set noswapfile     
set smarttab
set tabstop=4

augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType ruby,python,javascript,c,cpp match Excess /\%100v.*/
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
augroup END

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:tagbar_autofocus = 0
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  

map <F2> :TaskList<CR>      
