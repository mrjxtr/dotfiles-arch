syntax enable


set number            " Show absolute line number for the current line
set relativenumber    " Show relative line numbers for other lines

set ttimeoutlen=50


let &t_SI = "\e[5 q"
let &t_SR = "\e[3 q"
let &t_EI = "\e[1 q"

" Setting vim line numbers to Grey
highlight LineNr ctermfg=grey guifg=grey
