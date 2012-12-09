set nocompatible
syntax on
filetype plugin indent on
set title
set t_Co=256
set wildmenu
set expandtab
set nu
set ts=4
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab


" Load matchit (% to bounce from do to end, etc.)
  runtime! macros/matchit.vim

  augroup myfiletypes
    " Clear old autocmds in group
    autocmd!
    " autoindent with two spaces, always expand tabs
    autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
  augroup END

" set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername}

"autocmd BufEnter * let &titlestring = $HOSTNAME . ":" . expand("%:p:~")

"if &term == "xterm" || &term == "xterm-256color"
" Let the title stuff work even if we don't open the DISPLAY
"  set title
"  set t_ts=^[]2;
"  set t_fs=^G 
"endif

" -----------------------------------------------------------------------------  
" |                               Host specific
" -----------------------------------------------------------------------------  
  if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
    endif


