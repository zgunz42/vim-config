" ========================================
" Vim plugin configuration
" ========================================
"
set rtp+=/usr/local/opt/fzf

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

Plug 'vimwiki/vimwiki'

" Languages
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'mmorearty/elixir-ctags'

Plug 'mattn/emmet-vim'

" General text editing improvements...
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

Plug 'kristijanhusak/vim-carbon-now-sh'
" General vim improvements
Plug 'junegunn/fzf.vim' " Requires that fzf is installed
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-slash'
Plug 'ludovicchabant/vim-gutentags'
Plug 'wincent/terminus'


" Better autocomplete on code editor
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx']  }
" Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx']  }
"Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx']  }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx']  }
"Plug 'flowtype/vim-flow', { 'for': ['javascript', 'javascript.jsx'] },

Plug 'digitaltoad/vim-pug'

Plug 'scrooloose/nerdtree'
" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" Php IDE
Plug 'StanAngeloff/php.vim'
" Plug '2072/PHP-Indenting-for-VIm'
" Auto close tag
" Plug 'jiangmiao/auto-pairs'

" Auto using tab on autocomplete
Plug 'ervandew/supertab'
"
" add this line to your .vimrc file
Plug 'mattn/emmet-vim'

" post install (yarn install | npm install) then load plugin only for editing supported files
" Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" Cosmetics, color scheme, Powerline...
Plug 'pangloss/vim-javascript'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()
