execute pathogen#infect()

filetype plugin indent on

syntax on
set t_Co=256
colorscheme jellybeans

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

" remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" remove regex highlighting
command Clear :let @/=""

" write crontab files directly (so crontab -e will work)
autocmd filetype crontab setlocal nobackup nowritebackup

autocmd VimEnter * NERDTree | wincmd p " nerd tree; open in second window

