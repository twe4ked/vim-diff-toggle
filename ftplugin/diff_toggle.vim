" Author: Odin Dutton <odindutton AT gmail DOT com>
" Homepage: http://github.com/twe4ked/vim-diff-toggle

function! s:ToggleDiff()
  let lnum = line('.')
  for i in range(v:count1)
    let line = getline(lnum)
    let first_character = strpart(line, 0, 1)

    if first_character == '-'
      call setline(lnum, substitute(line, '^-', ' ', ''))
      let lnum += 1
    elseif first_character == ' '
      call setline(lnum, substitute(line, '^ ', '-', ''))
      let lnum += 1
    elseif first_character == '+'
      execute lnum . 'delete _'
    else
      execute 'normal! \<Esc>'
      break
    endif
  endfor

  call cursor(lnum, 1)
endfunction

nnoremap <silent> <buffer> <Space> :<C-u>call <SID>ToggleDiff()<CR>
