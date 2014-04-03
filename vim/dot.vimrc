set term=xterm

" light color scheme
colorscheme peachpuff

" indentation; expand tabs to four spaces
set shiftwidth=4
set tabstop=4
set expandtab
set shiftround
set autoindent

" use UNIX line breaks
set fileformats=unix

" syntax highlighting
filetype on

" text search with / and ?
set ignorecase
set smartcase
set incsearch

" number lines
set nu

if has("autocmd")
    " Overwrite the /etc/vimrc line width setting for text files.
    autocmd BufRead *.txt set tw=0
endif
