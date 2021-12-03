" Detect os version

if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif


call plug#begin() 
        source ~/.config/nvim/common-plugins.vim
        if g:os == "Darwin" 
                source ~/.config/nvim/darwin-plugins.vim
        elseif g:os == "Linux" 
                source ~/.config/nvim/linux-plugins.vim
        endif
call plug#end()

source ~/.config/nvim/common-sets.vim
source ~/.config/nvim/common-keymaps.vim

" Common plugin settings (they must check for os version inside!
source ~/.config/nvim/coc.vim 
source ~/.config/nvim/abbrv.vim 
source ~/.config/nvim/git.vim 
source ~/.config/nvim/ale.vim
source ~/.config/nvim/tex.vim

colorscheme gruvbox

" Generic, os specific sets
if g:os == "Darwin" 
        let g:markdown_folding = 1
        let g:rustfmt_autosave = 1
elseif g:os == "Linux" 
endif







