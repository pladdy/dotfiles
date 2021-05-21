execute pathogen#infect()
Helptags

filetype plugin indent on

set tabstop=2    " tabs are 2 spaces
set shiftwidth=2
set expandtab    " spaces for tabs

syntax on
set t_Co=256
colorscheme jellybeans

set hlsearch  " hightlight searches
set incsearch " show partial searches

set number " line number
set ruler  " show linenumber and column

set showmatch " matching braces highlighting
set mat=2     " blink for above

set backspace=eol,start,indent " configure backspace

" add a ruler
if exists('+colorcolumn')
  set colorcolumn=80
  highlight ColorColumn ctermbg=brown guibg=brown
endif

" highlight text after ruler
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%>101v.\+/

" remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" remove regex highlighting
command Clear :let @/=""

" write crontab files directly (so crontab -e will work)
autocmd filetype crontab setlocal nobackup nowritebackup

autocmd VimEnter * NERDTree | wincmd p " nerd tree; open in second window
let NERDTreeShowHidden=1               " show hidden files/dirs
let g:NERDTreeDirArrows=0              " fix directories in older vims

set mouse=a " let me scroll with mouse

" disable folding for vim-markdown
let g:vim_markdown_folding_disabled=1

autocmd BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
