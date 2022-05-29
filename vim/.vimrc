" We want vim
set nocompatible

"I like colors
set t_Co=256

"Make background dark
set background=dark

" Enable syntax highlighting
syntax on

" Allow for filetypes to be changed with plugins?
filetype plugin on

" Map leader key to something less inane
let mapleader  = "`"

" Indent stuff
set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =2         " Tab key indents by 4 spaces.
set shiftwidth  =2         " >> indents by 4 spaces.

" Make backspace work as you would expect.

set backspace   =indent,eol,start  

" Keybindings
  " Normal mode - nnoremap
  " Insert mode - inoremap
  " Visual mode - vnoremap

"CTRL + S to save
nnoremap <C-s> :w<CR> 
inoremap <C-s> <ESC>+w<CR>a  


set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

"Make mouse behavior better
set mouse=a

" Put all temporary files under the same directory.
"" https://github.com/mhinz/vim-galore#temporary-files
"set backup
"set backupdir   =$HOME/.vim/files/backup/
"set backupext   =-vimbackup
"set backupskip  =
"set directory   =$HOME/.vim/files/swap//
"set updatecount =100
"set undofile
"set undodir     =$HOME/.vim/files/undo/
"set viminfo     ='100,n$HOME/.vim/files/info/viminfo

"Automatic brace matching
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

"Make it so we can wrap visual selections with stuff
vnoremap <leader>s xi()<Esc>P)


"Plugins... sigh

call plug#begin('~/.vim/plugged')
" Declare the list of plugins.

" Airline for easy information about what I'm editing
Plug 'vim-airline/vim-airline'

" Gruvbox is a pretty cool colorscheme!
Plug 'https://github.com/morhetz/gruvbox.git'

" Home menu for vim. makes me feel at home. :)
Plug 'mhinz/vim-startify'

" Vimwiki for note taking when I need it.
Plug 'vimwiki/vimwiki'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Setting colorscheme
colorscheme gruvbox


