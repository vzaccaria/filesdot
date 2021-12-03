
" ALE keybindings
nnoremap <Leader>d :ALEDetail<cr>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> <C-h> <Plug>(ale_detail)


" if exists('*ale#linter#Define')
" call ale#linter#Define('tex', {
" \   'name': 'vzredpen',
" \   'executable': 'vzredpen',
" \   'command': 'vzredpen -f latex -r json %t',
" \   'callback': 'ale#handlers#redpen#HandleRedpenOutput',
" \})
" endif

" if exists('*ale#linter#Define')
" call ale#linter#Define('lhaskell', {
" \   'name': 'lit-stack-ghc',
" \   'output_stream': 'stderr',
" \   'executable': function('ale#handlers#haskell#GetStackExecutable'),
" \   'command': function('ale_linters#haskell#stack_ghc#GetCommand'),
" \   'callback': 'ale#handlers#haskell#HandleGHCFormat',
" \})
" endif

"call ale#linter#Define('haskell', {
"\   'name': 'stack_ghc_local',
"\   'aliases': ['stack-ghc-local'],
"\   'output_stream': 'stderr',
"\   'executable': 'stack',
"\   'command': 'stack ghc -- -fno-code -v0 %t -hide-package cryptonite',
"\   'callback': 'ale#handlers#haskell#HandleGHCFormat',
"\})


"let g:ale_linters = {}

""hide cryptonite for relation calculus
"let g:ale_linters.haskell = [ 'stack-ghc-local', 'hlint']
"" See here https://blog.jez.io/haskell-development-with-neovim/
""let g:ale_linters.haskell = [ 'stack-ghc', 'hlint']
"let g:ale_linters.yaml = ['yamllint']
"let g:ale_linters.verilog = ['iverilog']
"let g:ale_linters.tex = ['proselint', 'write-good', 'vzredpen']

"let g:ale_fixers = {
"\   'javascript': ['prettier'],
"\   'haskell': ['stylish-haskell'],
"\   'html': ['prettier'],
"\   'markdown': ['prettier'],
"\   'css': ['prettier'],
"\   'json': ['prettier'],
"\   'c': ['clang-format'],
"\   'asm': ['gcc'],
"\   'cpp': ['clang-format'],
"\}

let g:ale_javascript_prettier_options = '--prose-wrap always'
let g:ale_fix_on_save = 1
