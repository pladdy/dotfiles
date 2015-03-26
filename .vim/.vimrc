syntax on
filetype plugin on
colorscheme evening

set hlsearch  " hightlight searches
set incsearch " show partial searches
set number    " line number
set ruler     " show linenumber and column
set expandtab " spaces for tabs

" highlight text after 80 columns
highlight over_length ctermbg=red ctermfg=white guibg=#592929
match over_length /\%81v.\+/
