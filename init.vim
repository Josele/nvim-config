lua require('config')
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=r
set hlsearch
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
au BufRead,BufNewFile *.sct set filetype=html
