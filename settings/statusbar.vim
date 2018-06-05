"" AIRLINE
let g:bufferline_echo = 0           " Stop bufferline repeating below airline
                                    " For some reason this must be in .vimrc

let g:airline#extensions#tabline#enabled = 1                                " Buffer list at top of window
let g:airline_theme='bubblegum'                                            " Colours similar to VIM theme
"let g:airline#extensions#tabline#left_alt_sep = '|'                         " No powerline chars
let g:airline_powerline_fonts = 1


if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

