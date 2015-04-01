syntax on
filetype plugin on
colorscheme evening

set hlsearch  " hightlight searches
set incsearch " show partial searches

set number " line number
set ruler  " show linenumber and column

set expandtab " spaces for tabs

set showmatch " matching braces highlighting
set mat=2     " blink for above

set backspace=eol,start,indent " configure backspace

" add a ruler at 80 chars
if exists('+colorcolumn')
  set colorcolumn=80 
  highlight ColorColumn ctermbg=brown guibg=brown
endif

" highlight text after 80 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%>81v.\+/

command Clear :let @/="" " remove regex highlighting
