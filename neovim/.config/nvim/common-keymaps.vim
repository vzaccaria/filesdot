" open fzf for files in current directory,
nnoremap <silent> <C-x><C-f> :FZF -m<cr>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" open fzf for files in history,
nnoremap <silent> <M-u> :History<cr>

" quit,
nnoremap <silent> <M-q> :wq<cr>
nnoremap <silent> <M-w> :q<cr>
nmap <leader>Q :qall!<CR>
nmap <leader>W :wqall<CR>

" refill
noremap <silent> <M-i> gwip<cr>
nnoremap <silent> <M-x> :Commands<cr>
nnoremap <silent> <M-h> :Helptags<cr>
nnoremap <silent> <M-y> :Snippets<cr>


" open fzf for ag in local files,
nnoremap <silent> <M-f> :call fzf#vim#ag_raw(". --nocolor --hidden -U --ignore '.git*' --ignore node_modules", {'options': '--delimiter : --nth 4..'}, 1)<cr>

" set spell language to italian or english
nnoremap <silent> <leader>si :setlocal spell spelllang=it<cr>
nnoremap <silent> <leader>se :setlocal spell spelllang=en_US<cr>

" <M-o> correct last word with the first one from the vocabulary
imap <M-o>c <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <M-o>c [s1z=<c-o>

" move around buffers and tabs
nnoremap <silent> <C-[> :tabprevious<CR>
nnoremap <silent> <C-]> :tabnext<CR>
nnoremap <leader>n :bnext <CR>
nnoremap <leader>p :bprev <CR>

let g:EasyMotion_smartcase = 1
map <C-l> <Plug>(easymotion-bd-jk)
nmap <C-l> <Plug>(easymotion-overwin-line)

" wrap current word or selection with textbf/textit (need surround.vim)
nmap <leader>xb ysiw}i\textbf<ESC>
nmap <leader>xi ysiw}i\textit<ESC>
nmap <leader>xu ysiw}i\underline<ESC>
vmap <leader>xb S}i\textbf<ESC>
vmap <leader>xi S}i\textit<ESC>
vmap <leader>xu S}i\underline<ESC>

vmap <leader>" S"<ESC>
vmap <leader>' S'<ESC>


"replace word under cursor
nnoremap <leader>sr :%s/<C-R><C-W>//gI<left><left><left>

" Start interactive EasyAlign in visual mode (e.g. vipga)
vnoremap <Enter> <Plug>(EasyAlign)

xnoremap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nnoremap ga <Plug>(EasyAlign)

" ,as to realign a paragraph by spaces
nnoremap <leader>as vip:EasyAlign *\ <cr>

" ,ac to realign a paragraph by commas
nnoremap <leader>ac vip:EasyAlign *,<cr>

" ,aq to realign a paragraph by double quotes
nnoremap <leader>aq vip:EasyAlign *"<cr>

" ,ae to realign by ampersands
nnoremap <leader>ae vip:EasyAlign *&<cr>
			
" ,al to realign by colons
nnoremap <leader>al vip:EasyAlign *:<cr>

"search for visually selected text
vnoremap // y/<C-R>"<CR>

" Switch windows when in terminal
if has('nvim')
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l
tnoremap <C-w><left> <C-\><C-n><C-w>h
tnoremap <C-w><down> <C-\><C-n><C-w>j
tnoremap <C-w><up> <C-\><C-n><C-w>k
tnoremap <C-w><right> <C-\><C-n><C-w>l
" touchbar!
tnoremap § <C-c>
endif

cnoremap § <C-c>
inoremap § <Esc>
inoremap jk <Esc>

nmap <C-a> <C-w>


" Folding shortcuts
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
" nnoremap <S-Right> zo
" inoremap <S-Right> <C-O>zo
" nnoremap <S-Left> zc
" inoremap <S-Left> <C-O>zc

" qq to record, Q to replay
nnoremap Q @q
" nnoremap <c-q> @q

" Utilities for data entry
" <c-s> when in insert mode, press c-s to look for next data, then press enter
inoremap <c-s> <c-c>/

" before we find anything better, jump to the next | after 2 words (first,last
" name) and append
nnoremap <c-i> 2wa

nnoremap <silent> <leader>m :make<cr>

" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeMapActivateNode='<tab>'

" Open nvimrc file
nnoremap <Leader>v :vsp ~/.config/nvim/init.vim<CR>

" Source nvimrc file
nnoremap <Leader>sv :source ~/.config/nvim/init.vim<CR>

