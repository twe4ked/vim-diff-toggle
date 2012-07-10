" Author: Odin Dutton <odindutton AT gmail DOT com>
" Homepage: http://github.com/twe4ked/vim-diff-toggle

function! s:ToggleDiff()
  let line = getline('.')
  let first_character = strpart(line, 0, 1)

  if first_character == '-'
    call setline('.', substitute(line, '^-', ' ', ''))
  elseif first_character == ' '
    call setline('.', substitute(line, '^ ', '-', ''))
  elseif first_character == '+'
    delete _
  else
    execute 'normal! \<Esc>'
  endif
endfunction

nnoremap <silent> <buffer> <Space> :call <SID>ToggleDiff()<CR>
