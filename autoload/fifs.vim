function! fifs#doFind(cmd, pattern)
  let l:pattern = a:pattern
  if empty(l:pattern)
    let pattern = input('Enter your keyword: ', '', 'command')
  endif
  if empty(l:pattern)
    echo 'Pattern is empty.'
    return
  endif
  echo 'Searching pattern: ' . l:pattern
endfunction

