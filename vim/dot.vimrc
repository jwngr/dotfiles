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
syntax on

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

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" trim trailing whitespace on save
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
autocmd BufWritePre * :call TrimWhiteSpace()
