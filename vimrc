" Crushton's .vimrc
"             __ ____  __ __  _______ __ ______  ___  ____  
"            /  |    \|  |  |/ ___|  |  |      |/   \|    \ 
"           /  /|  D  |  |  (   \_|  |  |      |     |  _  |
"          /  / |    /|  |  |\__  |  _  |_|  |_|  O  |  |  |
"         /   \_|    \|  :  |/  \ |  |  | |  | |     |  |  |
"         \     |  .  |     |\    |  |  | |  | |     |  |  |
"          \____|__|\_|\__,_| \___|__|__| |__|  \___/|__|__|
                                                            
" Stephen Bach http://items.sjbach.com/319/configuring-vim-right
" Drew Neil http://vimcasts.org/episodes/page/7/
execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

" show existing tab with 2 spaces width
set tabstop=2

" when indenting with '>', use 2 spaces width
set shiftwidth=2

" On pressing tab, insert 2 spaces
set expandtab

" buffers can exist in the background without being in a window.
set hidden

" Symbols for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" =============== Mappings =========================
let mapleader = "\<Space>"
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <Space> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap jj <ESC>

" Enter visual line mode with <Space><Space>:
nmap <Leader><Leader> V

" Split window and focus in new split
nnoremap <leader>w <C-w>v<C-w>l

" Shortcut to rapidly toggle 'set list'
nmap <leader>l :set list!<CR>

" Directly open .vimrc in a new tab
nnoremap <leader>v :tabedit $MYVIMRC<CR>

" Breaking lines with \[enter] without having to go to insert mode
nnoremap <leader><CR> i<CR><Esc>

" https://github.com/skwp/dotfiles/blob/master/vimrc
" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=8   "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost ~/.vim/vimrc source $MYVIMRC
endif

syntax enable
colorscheme feral
