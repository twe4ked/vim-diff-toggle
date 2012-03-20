" Author: Odin Dutton <odindutton AT gmail DOT com>
" Homepage: http://github.com/twe4ked/vim-diff-toggle

if exists('g:loaded_diff_toggle') || &cp
  finish
endif
let g:loaded_diff_toggle = 1

function! ToggleDiff()
  let line = getline('.')
  let first_character = strpart(line, 0, 1)

  if first_character == '+'
    let repl = substitute(line, '^+', '-', '')
  elseif first_character == '-'
    let repl = substitute(line, '^-', ' ', '')
  else
    let repl = substitute(line, '^ ', '+', '')
  endif

  call setline('.', repl)
endfunction

autocmd FileType diff nmap <silent> <buffer> <Space> :call ToggleDiff()<CR>
