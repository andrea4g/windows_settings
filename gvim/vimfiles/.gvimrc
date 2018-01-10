execute pathogen#infect()
filetype plugin indent on
syntax on

" Set a reasonable number of columns
set columns=100

syntax enable
set background=dark

colorscheme solarized

set tabstop=2      	 " The width of a TAB is set to 4.
                   	 " Still it is a \t. It is just that
                     " Vim will interpret it to be having
                   	 " a width of 2.
set shiftwidth=2   	 " Indents will have a width of 2

set softtabstop=2    " Sets the number of columns for a TAB

set expandtab      	 " Expand TABs to spaces

retab

set number		       " Set line number

set smartindent

set autoindent

set visualbell

set backspace=indent,eol,start

if has('win32') || has('win64') "If gVim under Windows"
    let g:UltiSnipsSnippetDirectories=["$HOME/vifiles/UltiSnips"]
endif

" Full Screen in Windows
if has("win32") || has("win16")
  let g:GVimFullScreen = $HOME.'/vimfiles/gvimfullscreen.dll'
  function ToggleFullScreen()
    call libcallnr(g:GVimFullScreen, "ToggleFullScreen", 0)
  endfunction
  command! ToggleFullScreen call ToggleFullScreen()
  map <silent> <F11> :ToggleFullScreen<CR>
endif

" Toggle background using ALT-t
function ToggleBackground()
  if &background == "dark"
    let &background = "light"
  else
    let &background = "dark"
  endif
endfunction
command! ToggleBackground call ToggleBackground()
map <silent> <M-t> :ToggleBackground<CR>

let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'

let g:Tex_DefaultTargetFormat='pdf'

let g:Tex_CompileRule_pdf='xelatex -interaction=nonstopmode $*'

let g:Tex_ViewRule_pdf = 'open -a Preview'

"remap caps_lock with esc (works only on linux with xorg-xmodmap package
"installed)
"au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
