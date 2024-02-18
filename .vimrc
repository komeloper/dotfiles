if has ("syntax")
    syntax on
endif

set number    "行番号
set title
set ambiwidth=double
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set hidden
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set is
set hls

if has("autocmd")
  "ファイルタイプの検索を有効化
  filetype plugin on

  "ファイルタイプに合わせたインデントを利用
  filetype indent on

  "sw=shiftwidth, sts=softtabstop, ts=tabstop, et=expandtab
  autocmd FileType c            setlocal sw=4 sts=4 ts=4 et
  autocmd FileType ruby         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html         setlocal sw=2 sts=2 ts=2 et
  autocmd FileType js           setlocal sw=4 sts=4 ts=4 et
  autocmd FileType zsh          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scala        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType json         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scss         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sass         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript   setlocal sw=4 sts=4 ts=4 et
  autocmd FileType yaml         setlocal sw=2 sts=2 ts=2 et
endif
