set tabstop=4
set autoindent
set nu
syntax on

set nocompatible
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'  "configurate plugin
Plugin 'rust-lang/rust.vim'    "Rust plugin
Plugin 'beyondmarc/opengl.vim' "Opengl plugin
Plugin 'beyondmarc/glsl.vim'   "for textures
Plugin 'octol/vim-cpp-enhanced-highlight' "syntax c++
Plugin 'scrooloose/syntastic'             "find errors
Plugin 'vim-scripts/OmniCppComplete'      "auto comlit (Dosen't work)
"Plugin 'c.vim'



call vundle#end()
filetype plugin indent on   

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:syntastic_enable_signs  = 1
let g:syntastic_cpp_checkers  = ['gcc']
let g:syntastic_rust_checkers = ['rustc'] 
let g:syntastic_asm_checkers  = ['nasm']
let g:syntastic_java_checkers = ['javac']



let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++14'
let g:syntastic_rust_compiler = 'rustc'
let g:syntastic_asm_compiler = 'nasm'

let g:syntastic_asm_nasm_args = "-g -f elf32 -DUNIX"

set laststatus=2


au Filetype * set tabstop=4
au Filetype * set shiftwidth=4
au Filetype * set softtabstop=4
set expandtab
