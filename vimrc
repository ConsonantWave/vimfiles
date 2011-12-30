"" Restarting my .vimrc from http://mislav.uniqpath.com/2011/12/vim-revisited/

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
filetype plugin indent on       " load file type plugins + indentation

"" Fearless leader
let mapleader = ","

"" Whitespace
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
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
set cursorline                  " highlight line with cursor
set ttyfast                     " fast tty mode
set laststatus=2                " status line always shows up
set relativenumber              " now I finally know how many lines I'm using

"" I'm not that good at regex already, don't confuse me further
nnoremap / /\v
vnoremap / /\v

"" Map <Tab> to % for bracket matching
nnoremap <Tab> %
vnoremap <Tab> %

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
