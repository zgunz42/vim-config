let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 1
"let g:deoplete#enable_debug=1
let g:gutentags_enabled = 1
" deoplete using up and down instead
inoremap <expr><up> pumvisible() ? "\<c-p>" : "\<up>"
inoremap <expr><down> pumvisible() ? "\<c-n>" : "\<down>"
" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<up>"
let g:UltiSnipsJumpBackwardTrigger="<down>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


autocmd FileType js UltiSnipsAddFiletypes javascript-jasmine
autocmd FileType js UltiSnipsAddFiletypes javascript.es6
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS

" Add custom Snippet Directory into UltiSnips
let g:UltiSnipsSnippetDirectories = ['~/.snippets', 'UltiSnips']

let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \]


set completeopt=longest,menuone,noinsert
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['buffer', 'files', 'ultisnips']
let g:deoplete#sources['html'] = ['file', 'ultisnips']
let g:deoplete#sources['javascript.jsx'] = ['ternjs', 'files', 'ultisnips']

"deoplete-ternjs
let g:deoplete#sources#ternjs#tern_bin =  $HOME . '/.vim/plugged/tern_for_vim/node_modules/tern/bin/tern'
"let g:deoplete#sources#ternjs#timeout = 1
"let g:deoplete#sources#ternjs#types = 1
"let g:deoplete#sources#ternjs#case_insensitive = 1


" close the preview window when you're not using it
let g:SuperTabClosePreviewOnPopupClose = 1
" " or just disable the preview entirely
set completeopt-=preview

let g:deoplete#omni_patterns = {}
"let g:deoplete#force_omni_input_patterns.javascript = '[^. *\t]\.\w*'
"let g:deoplete#omni_patterns.javascript = '[^. *\t]\.\w*'
let g:deoplete#omni_patterns.javascript = '\h\w*\|[^. \t]\.\w*'
let g:user_emmet_leader_key='<down>'
let g:user_emmet_settings = {
      \  'php' : {
      \    'extends' : 'html',
      \    'filters' : 'c',
      \  },
      \  'xml' : {
      \    'extends' : 'html',
      \  },
      \  'haml' : {
      \    'extends' : 'html',
      \  },
      \  'javascript.jsx' : {
      \    'extends' : 'jsx',
      \  },
      \}
