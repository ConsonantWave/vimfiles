"" Restarting my .vimrc from http://mislav.uniqpath.com/2011/12/vim-revisited/
"" Also, http://stevelosh.com/blog/2010/09/coming-home-to-vim/

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
filetype plugin indent on       " load file type plugins + indentation

"" Fearless leader
let mapleader = ","

"" Background
if has("gui_running")
  set guioptions-=T
  set t_Co=256
  set background=dark
  colorscheme moria
  set nonu
else
  colorscheme default
  set background=dark
  set nonu
endif

"" Whitespace
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 2)
set expandtab                   " use spaces, not tabs (optional)
set smarttab                    " backspace removes a tab's worth of whitespace
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set gdefault                    " replace happens on every instance, not just the first one
"" hide search results
nnoremap <leader><space> :noh<cr>

"" Misc
set scrolloff=3                 " context of 3 lines when scrolling
set autoindent                  " autoindents next line based on previous indent
set showmode                    " what mode am I in?
set showcmd                     " partial cmd showing
set hidden                      " unloaded buffers still exist
set wildmenu                    " incredibly useful tab completion
set wildmode=list:longest       " wildmode lists all matches, completes up to longest common match
set ttyfast                     " fast tty mode
set laststatus=2                " status line always shows up
set relativenumber              " now I finally know how many lines I'm using

set nocursorcolumn
set nocursorline
syntax sync minlines=256

"" Turn backup off
set nobackup
set nowb
set noswapfile

"" Persistent undo
set undodir=~/.vim/undodir
set undofile

"" Remap 0 to ^, since ^ is that much more useful
map 0 ^

"" I'm not that good at regex already, don't confuse me further
nnoremap / /\v
vnoremap / /\v

"" go up and down as I see it
nnoremap j gj
nnoremap k gk

"" Switch to previous buffer
nnoremap <leader><leader> <c-^>

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

" Ack!
map <leader>a :Ack

"" More useful buffer switching
map <right> :bn<cr>
map <left> :bp<cr>
