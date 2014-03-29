" filetype
filetype on
filetype plugin on
filetype indent on

" Whitespace
set autoindent
set nosmartindent
set cindent
set nowrap
set shiftwidth=4
set tabstop=4
set backspace=2
set shiftround
set expandtab
au BufWritePre * :%s/\s\+$//e " remove trailing whitespace

" Search
set ignorecase
set smartcase
set incsearch

" Visual
syntax on
set number
set showmatch
set splitright
set title
set novisualbell
set ruler
set mouse=a
set t_Co=16
set encoding=utf-8
set cmdheight=2
set scrolloff=10
set laststatus=2
set modelines=2
set matchpairs+=<:>
let Powerline_symbols="unicode"

" Functionality modifications
set autochdir
set autowrite
set nobackup
set nocompatible
set nowritebackup
set showcmd
set wildmenu
set hidden
set history=50
set pastetoggle=<F8>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap <S-Tab> <<
imap <S-Tab> <Esc><<i

" Tagbar
nmap \t :TagbarToggle<cr>

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=0
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %f2 #%w}]'

" Python highlightinig
let python_highlight_all = 1

" Highlight C language space errors
let c_space_errors = 1

" Additional Configurations
if has("autocmd")
   " When editing a file, always jump to the last known cursor position.
   " Don't do it when the position is invalid or when inside an event handler
   " (happens when dropping a file on gvim).
   au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif
