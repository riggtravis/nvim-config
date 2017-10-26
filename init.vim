" PRE PACKAGES

" I want good colors
set termguicolors

" PACKAGE INSTALLMENT
" I like package management. Dein sounds best.
if &compatible
  set nocompatible
endif
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.config/nvim/dein'))
  call dein#begin(expand('~/.config/nvim/dein'))

  call dein#add(expand('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim'))
  " call dein#add('Shougo/neocomplete.vim')

  " I would like to have my things close themselves
  call dein#add('Raimondi/delimitMate')

  " Again, I want good colors
  call dein#add('iCyMind/NeoSolarized')
  call dein#add('vim-airline/vim-airline-themes')

  " Sometimes autocomplete is handy
  call dein#add('Shougo/deoplete.nvim')

  " A status line can look nice but more importantly can be helpful
  call dein#add('vim-airline/vim-airline')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-vinegar')
  call dein#add('Shougo/denite.nvim')
  call dein#add('mbbill/undotree')
  call dein#add('mhinz/vim-signify')

  " JavaScript stuff
  call dein#add('jelera/vim-javascript-syntax')

  " Arduinos are neat
  "call dein#add('jplaut/vim-arduino-ino')
  "call dein#add('stevearc/vim-arduino')

  " Super annoying: clearing trailing whitespace all the time
  call dein#add('ntpeters/vim-better-whitespace')

  call dein#end()
  call dein#save_state()
endif

" PLUGIN SETTINGS
colorscheme NeoSolarized
let g:airline_theme='solarized'

" Use deoplete
let g:deoplete#enable_at_startup = 1

" Strip whitespace by default
"autocmd BufEnter * EnableStripeWhitespaceOnSave

" PERSONAL SETTINGS

" Keep the cursor centered when editing code
set scrolloff=999

" I like two space tabs
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸·

" I use a dark colorscheme
set background=dark

" Why is autoindent not default?
set smartindent

" Sometimes it is hard to find my cursor
set cursorline

" It's important not to go over 80 characters
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Go to the last cursor location when a file is opened, unless this is a
" git commit (in which case it's annoying)
au BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") && &filetype != "gitcommit" |
    \ execute("normal `\"") |
  \ endif
