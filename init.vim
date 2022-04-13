set nocompatible
set termguicolors

set background=light

syntax on
syntax enable
filetype plugin indent on
let no_buffers_menu=1
set expandtab                                   " Expand TABS to spaces
set backspace=indent,eol,start			" Backspace works as expected
"set relativenumber				" Relative line numbers
set hidden					" Allows hidden buffers
set cursorline					" Highlight current line
set shiftwidth=4
set softtabstop=4
set number
autocmd BufWritePre * :%s/\s\+$//e

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


set clipboard+=unnamedplus

"************************************************
"" Vim-Plug
"************************************************

let nvimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(nvimplug_exists)
  echo "Installing Vim-Plug..."
  echo ""
  silent !
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

"************************************************
"" Plugins
"************************************************
" Required to call `Plug`
call plug#begin(expand('~/.config/nvim/plugged'))

" Core tools
"Plug 'scrooloose/nerdtree' 		" Nerdtree
"Plug 'terryma/vim-multiple-cursors' 	" Multiple cursors
"Plug 'godlygeek/tabular'                " Align

" Haskell
"Plug 'eagletmt/neco-ghc'		" ghc-mod
Plug 'neovimhaskell/haskell-vim' 	" Syntax highlighting and indentation
" Plug 'https://gitlab.com/yorickpeterse/vim-paper.git'

"Haskell Formatting
Plug 'sdiehl/vim-ormolu'

" Color schemes
Plug 'NLKNguyen/papercolor-theme'

" End Plug session
call plug#end()

" color paper
" colorscheme NeoSolarized
colorscheme PaperColor
