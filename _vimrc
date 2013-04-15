set encoding=utf8
set termencoding=utf8
set fileencoding=utf8
set fileencodings=utf8,gb2312,ucs-bom,big5

let s:vimcomment = "0"
func Comment_Toggle()
  if s:vimcomment == "0"
     set foldmethod=marker
     set foldmarker=/*,*/
     let s:vimcomment = "1"
  else
     set foldmethod=syntax
     let s:vimcomment = "0"
  endif
endf
map <F11> : call Comment_Toggle()<CR>

set pastetoggle=<F12>

set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set nu

set nocompatible
filetype off
syntax on
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
