set nocompatible
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set number
"set colorcolumn=80"
set tw=79
set fo-=t   " don't automatically wrap text when typing
set noswapfile
set nobackup
"highlight ColorColumn ctermbg=7"
colorscheme slate

execute pathogen#infect()
filetype plugin indent on
syntax on

let vimclojure#HighlightBuiltins = 1
let vimclojure#ParenRainbow = 10

nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
nnoremap tj  :tabnext<CR>
if bufwinnr(1)
  map - <C-W><C-W>
  map + <S-C-W><S-C-W>
endif

"---------------- matching delimiters ------------------"
inoremap ( ()<Esc>:call BC_AddChar(")")<CR>i
inoremap { {<CR>}<Esc>:call BC_AddChar("}")<CR><Esc>kA<CR>
inoremap [ []<Esc>:call BC_AddChar("]")<CR>i
inoremap " ""<Esc>:call BC_AddChar("\"")<CR>i
"jump out of parenthesis

inoremap <C-j> <Esc>:call search(BC_GetChar(), "W")<CR>a

function! BC_AddChar(schar)
  if exists("b:robstack")
    let b:robstack = b:robstack . a:schar
  else
    let b:robstack = a:schar
  endif
endfunction
         
function! BC_GetChar()
  let l:char = b:robstack[strlen(b:robstack)-1]
  let b:robstack = strpart(b:robstack, 0, strlen(b:robstack)-1)
  return l:char
endfunction
"--------------------- end ----------------------------"

"Configs for specific filetypes"
au Filetype python setlocal tabstop=4 shiftwidth=4 
au Filetype javascript setlocal tabstop=2 shiftwidth=2 
au Filetype c setlocal tabstop=4 shiftwidth=4
au Filetype java setlocal tabstop=4 shiftwidth=4
