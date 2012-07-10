" Author: Odin Dutton <odindutton AT gmail DOT com>
" Homepage: http://github.com/twe4ked/vim-diff-toggle

function! s:ToggleDiff()
  let line = getline('.')
  let first_character = strpart(line, 0, 1)

  if first_character == '-'
    let repl = substitute(line, '^-', ' ', '')
  elseif first_character == ' '
    let repl = substitute(line, '^ ', '-', '')
  else
    let repl = line
    execute 'normal! \<Esc>'
  endif

  call setline('.', repl)
endfunction

nnoremap <silent> <buffer> <Space> :call <SID>ToggleDiff()<CR>
