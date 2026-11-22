"""
" Plugins
"""
call plug#begin()

" Java decompiler for .class files
Plug 'udalov/javap-vim'

call plug#end()

"""
" Rest of config
"""
syntax enable
colorscheme selenized
set background=dark
set t_Co=16

set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Stops gitcommit from auto wrapping
au Filetype gitcommit call SetGitCommit()
func SetGitCommit()
    setlocal formatoptions-=tl
endfunc

