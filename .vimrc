syntax on
filetype plugin indent on

set background=dark
colorscheme hybrid

set guifont=Menlo\ Regular:h20"

"set guifont=Font\ Family:h15
"set guifontwide=Font\ Family:h15
"set guifont=20
set ruler
set number
set cursorline
set cursorcolumn
set laststatus=2
set cmdheight=2
set showmatch
set helpheight=999
set list
set listchars=tab:>-

set scrolloff=8
set sidescrolloff=16
set sidescroll=1

set confirm
set hidden
set autoread

set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

set mouse=a
set clipboard=unnamed,autoselect

set wildmenu wildmode=list:longest,full
set history=10000

set visualbell t_vb=
set noerrorbells

set backspace=2 " make backspace work like most other apps


set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
    exec "imap " . k . " " . k . "<C-N><C-P>"
endfor

imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"
imap vv <Esc>

let fortran_free_source=1

noremap % v%

set spelllang=en,cjk

"fun! s:SpellConf()
"  redir! => syntax
"  silent syntax
"  redir END
"
"  set spell
"
"  if syntax =~? '/<comment\>'
"    syntax spell default
"    syntax match SpellMaybeCode /\<\h\l*[_A-Z]\h\{-}\>/ contains=@NoSpell transparent containedin=Comment contained
"  else
"    syntax spell toplevel
"    syntax match SpellMaybeCode /\<\h\l*[_A-Z]\h\{-}\>/ contains=@NoSpell transparent
"  endif
"
"  syntax cluster Spell add=SpellNotAscii,SpellMaybeCode
"endfunc

"augroup spell_check
"  autocmd!
"  autocmd BufReadPost,BufNewFile,Syntax * call s:SpellConf()
"augroup END

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'elmcast/elm-vim'

call plug#end()

"highlight ColorColumn ctermbg=gray
set colorcolumn=80
