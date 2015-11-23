" kill vi compatibility
set nocompatible               " be iMproved
filetype off                   " required!
"
"
" " vim IDE settings
set number
"
" " Highlight current line
set cursorline

let g:solarized_termcolors= 16
let g:solarized_termtrans = 16

let g:solarized_bold = 1
let g:solarized_underline = 1 
let g:solarized_italic = 1
let g:solarized_contrast = "high"
let g:solarized_visibility= "high"

execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized
