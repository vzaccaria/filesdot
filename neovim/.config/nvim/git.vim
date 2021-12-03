" fugitive <leader>g
nnoremap [fugitive] <Nop>
nmap <leader>g [fugitive]
nnoremap <silent> [fugitive]s  :Git status<CR>
nnoremap <silent> [fugitive]b  :Git blame<CR>
nnoremap <silent> [fugitive]B  :GBrowse<CR>

" Current staged changes are added to last commit
nnoremap <silent> [fugitive]m :Git commit --amend<CR>
nnoremap <silent> [fugitive]c :Git commit -v -q<CR>
nnoremap <silent> [fugitive]d  :Gdiffsplit<CR>
nnoremap <silent> [fugitive]a  :Gwrite<CR>
nnoremap <silent> [fugitive]r  :Gread<CR>
nnoremap <silent> [fugitive]p  :Git push<CR>
nnoremap <silent> [fugitive]l  :Git log -- %<CR>
nnoremap <silent> [fugitive]h :GitGutterStageHunk<CR>

nnoremap <F5> :UndotreeToggle<CR>
nnoremap <F1> :Gwrite<CR>
nnoremap <F2> :Git commit -v -q<CR>
nnoremap <F3> :Git commit --amend<CR>
nnoremap <F12> :GBrowse<CR>


" Use fontawesome icons as signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg=bg 
highlight SignColumn ctermbg=bg

