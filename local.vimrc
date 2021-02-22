"------------------- Standard-------------------
set relativenumber
set ma
au FileType type call SyntaxFoo()
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"------------------Aurelio.net-----------------

" creates viminfo to memorize info.
" will save searches /, copy (yy) from one
" file to the other (p)
set viminfo='10,\"30,:20,%,n~/.viminfo

" when open the file, the cursor shall be positioned
" where it was when the file were close
au BufReadPost * if line("'\"")|execute("normal `\"")|endif

" F7: autocomplete a word that has been already used in the text
" F8: continuos completing the next words
imap <F7> <c-n>
imap <F8> <c-x><c-n>

" let me save the file with W and Q in capslock
"cab W  w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q  q


map ,d :r!date<cr>
      \:s/ \(...\) \(..\).*\(....\)$/, \2 de \1 de \3/<cr>
      \:nohl<cr>

"--------------------NORMINETTE------------------
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set smartindent
set showcmd
" enable mouse control
set mouse=a
" make the 81st column turn red
set colorcolumn=81
" open close brackets and others
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
