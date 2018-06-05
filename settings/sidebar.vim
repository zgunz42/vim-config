"""""""""""""""""""""""
"" netrw config
"""""""""""""""""""""""
let g:netrw_banner = 0
let g:netrw_liststyle = 3
" set to horizontal for new opem
"let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 80
" NERDTree automatic open om directory
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
