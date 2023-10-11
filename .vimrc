set t_BE=
execute pathogen#infect()
syntax enable
set background=dark
set fileencodings=ucs-bom,utf-8,iso-8859-2,latin1
let IspellLang = "pl"
let Spell_SetLanguage = "pl"
highlight SpellErrors ctermfg=Red guifg=Red
	\ cterm=underline gui=underline term=reverse

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set number
set tabstop=2 shiftwidth=2 expandtab

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"set autoindent          " always set autoindenting on
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set incsearch           " do incremental searching
" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

endif " has("autocmd")

set comments=nb:>

" ADDED BY PLD.
" USE :help colorscheme FOR INFO
map! <F7> :spell off<CR>
map! <F8> :set language=polish<CR>:spell on<CR>
map! <F9> :set language=english<CR>:spell on<CR>
map! <F5> <C-S>
map ## :0/^To:yy}P0dWiFcc: +f@D
