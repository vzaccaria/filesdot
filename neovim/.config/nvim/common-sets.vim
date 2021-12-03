let g:mapleader = ","
set nocompatible
" set statusline+=%{get(b:,'gitsigns_status','')}

set ignorecase

set expandtab

" use system clipboard
set clipboard+=unnamedplus

"change directory into the file we are editing
set autochdir

" exrc allows loading local executing local rc files.
set exrc

" secure disallows the use of :autocmd, shell and write commands in local .vimrc files.
set secure

" Relative line numbers 
set rnu


set cursorline 
hi CursorLine term=bold cterm=bold guibg=Grey30
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

set nolazyredraw
set noshowcmd

" When editing mails from neomutt use markdown
augroup filetypedetect
    au BufRead,BufNewFile neomutt-* set filetype=markdown
augroup END


" when opening fzf look also for hidden files
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

" Update sign column every quarter second
set updatetime=250
