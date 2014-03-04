execute pathogen#infect()
set nocompatible "use vim settings instead of vi
syntax on
filetype indent on
filetype plugin on
set title
set t_Co=256
set history=50
set wildmenu
set nu
set ts=4
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smarttab
set clipboard=unnamed
set pastetoggle=<F2>    " use F2 to turn of auto indent when pasting in code
map <F10> :NERDTreeToggle<CR>
set hidden      

" The remap below prevents having to use escape to exit insert mode
" Your hands will thank you
inoremap jk <esc>  

" remaps for switching through buffers
nnoremap <silent> [b :bprevious<CR> 
nnoremap <silent> ]b :bnext<CR>

" Load matchit (% to bounce from do to end, etc.)
  runtime! macros/matchit.vim

  augroup myfiletypes
    " Clear old autocmds in group
    autocmd!
    " autoindent with two spaces, always expand tabs
    autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
    autocmd BufNewFile,BufReadPost *.go set filetype=go
  augroup END

" Folding settings
set foldmethod=syntax
set foldlevelstart=20

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let xml_syntax_folding=1      " XML

"the dumber, but sometimes better folding option
"set foldmethod=indent


" set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername}

"autocmd BufEnter * let &titlestring = $HOSTNAME . ":" . expand("%:p:~")

"open NERDTree if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

" -----------------------------------------------------------------------------  
" |                               Host specific
" -----------------------------------------------------------------------------  
  if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
    endif


